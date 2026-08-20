package com.rodrigobsjava.api_chamados.service;

import com.rodrigobsjava.api_chamados.dto.ChamadoRequest;
import com.rodrigobsjava.api_chamados.dto.ChamadoResponse;
import com.rodrigobsjava.api_chamados.entity.Chamado;
import com.rodrigobsjava.api_chamados.enums.PrioridadeChamado;
import com.rodrigobsjava.api_chamados.enums.StatusChamado;
import com.rodrigobsjava.api_chamados.exception.ResourceNotFoundException;
import com.rodrigobsjava.api_chamados.repository.ChamadoRepository;
import com.rodrigobsjava.api_chamados.services.ChamadoService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class ChamadoServiceTest {

    @Mock
    private ChamadoRepository chamadoRepository;

    private ChamadoService chamadoService;

    @BeforeEach
    void setUp() {
        chamadoService = new ChamadoService(chamadoRepository);
    }

    @Test
    void deveListarTodosOsChamados() {
        // Arrange
        Chamado chamado1 = new Chamado();
        chamado1.setId(1L);
        chamado1.setTitulo("Computador não liga");
        Chamado chamado2 = new Chamado();
        chamado2.setId(2L);
        chamado2.setTitulo("Impressora não scannea");
        Chamado chamado3 = new Chamado();
        chamado3.setId(3L);
        chamado3.setTitulo("Pasta de rede sem acesso");

        when(chamadoRepository.findAll()).thenReturn(List.of(chamado1, chamado2, chamado3));

        // Act
        List<ChamadoResponse> resultado = chamadoService.listarTodos();

        // Assert
        assertNotNull(resultado);
        assertEquals(3, resultado.size());
        assertEquals(1L, resultado.get(0).id());
        assertEquals("Computador não liga", resultado.get(0).titulo());

        assertEquals(2L, resultado.get(1).id());
        assertEquals("Impressora não scannea", resultado.get(1).titulo());

        assertEquals(3L, resultado.get(2).id());
        assertEquals("Pasta de rede sem acesso", resultado.get(2).titulo());
        verify(chamadoRepository).findAll();
    }

    @Test
    void deveBuscaChamadoPorId() {
        Chamado chamado = new Chamado();
        chamado.setId(1L);
        chamado.setTitulo("Computador não liga");

        when(chamadoRepository.findById(1L)).thenReturn(java.util.Optional.of(chamado));

        ChamadoResponse resultado = chamadoService.buscarPorId(1L);

        assertNotNull(resultado);
        assertEquals(1L, resultado.id());
        assertEquals("Computador não liga", resultado.titulo());
        verify(chamadoRepository).findById(1L);
    }

    @Test
    void deveLancarExcecaoQuandoChamadoNaoExistir() {
        when(chamadoRepository.findById(777L)).thenReturn(Optional.empty());
        assertThrows(ResourceNotFoundException.class, () -> chamadoService.buscarPorId(777L));
        verify(chamadoRepository).findById(777L);
    }

    @Test
    void deveCriarChamado() {
        ChamadoRequest request = new ChamadoRequest(
                "Computador não liga",
                "Computador do setor administrativo não liga",
                StatusChamado.ABERTO,
                PrioridadeChamado.ALTA,
                "Jose Silva",
                "Carlos Oliveira"
        );

        Chamado chamadoSalvo = new Chamado();
        chamadoSalvo.setId(51L);
        chamadoSalvo.setTitulo(request.titulo());
        chamadoSalvo.setDescricao(request.descricao());
        chamadoSalvo.setStatus(request.status());
        chamadoSalvo.setPrioridade(request.prioridade());
        chamadoSalvo.setSolicitante(request.solicitante());
        chamadoSalvo.setTecnicoResponsavel(request.tecnicoResponsavel());

        when(chamadoRepository.save(any(Chamado.class))).thenReturn(chamadoSalvo);

        ChamadoResponse resultado = chamadoService.criar(request);

        assertNotNull(resultado);
        assertEquals(51L, resultado.id());
        assertEquals("Computador não liga", resultado.titulo());

        verify(chamadoRepository).save(any(Chamado.class));
    }

    @Test
    void deveCriarChamadoComDatas() {
        ChamadoRequest request = new ChamadoRequest(
                "Computador não liga",
                "Computador do setor administrativo não liga",
                StatusChamado.ABERTO,
                PrioridadeChamado.ALTA,
                "Jose Silva",
                "Carlos Oliveira"
        );

        when(chamadoRepository.save(any(Chamado.class))).thenAnswer(invocation -> invocation.getArgument(0));

        ChamadoResponse resultado = chamadoService.criar(request);

        assertNotNull(resultado);
        assertNotNull(resultado.dataAbertura());
        assertNotNull(resultado.dataAtualizacao());

        assertEquals(resultado.dataAbertura(), resultado.dataAtualizacao());

        verify(chamadoRepository).save(any(Chamado.class));
    }

    @Test
    void deveAtualizarChamado() {

        Chamado chamadoExistente = new Chamado();
        LocalDateTime dataAberturaOriginal = LocalDateTime.of(2026, 8, 10, 10, 0);
        chamadoExistente.setDataAbertura(dataAberturaOriginal);

        LocalDateTime dataAtualizacaoAnterior = LocalDateTime.of(2026, 8, 10, 11, 0);
        chamadoExistente.setDataAtualizacao(dataAtualizacaoAnterior);

        chamadoExistente.setId(1L);
        chamadoExistente.setTitulo("Computador não liga");

        when(chamadoRepository.findById(1L)).thenReturn(java.util.Optional.of(chamadoExistente));

        when(chamadoRepository.save(any(Chamado.class))).thenAnswer(invocation -> invocation.getArgument(0));

        ChamadoRequest request = new ChamadoRequest(
                "Computador não da Vídeo",
                "Computador do setor administrativo não da Vídeo",
                StatusChamado.EM_ATENDIMENTO,
                PrioridadeChamado.ALTA,
                "Jose Silva",
                "Carlos Oliveira"
        );

        ChamadoResponse resultado = chamadoService.atualizar(1L, request);

        assertEquals("Computador não da Vídeo", resultado.titulo());
        assertEquals(StatusChamado.EM_ATENDIMENTO, resultado.status());
        assertEquals(dataAberturaOriginal, resultado.dataAbertura());
        assertNotEquals(dataAtualizacaoAnterior, resultado.dataAtualizacao());
        assertNotNull(resultado.dataAtualizacao());

        verify(chamadoRepository).findById(1L);
        verify(chamadoRepository).save(chamadoExistente);
    }


    @Test
    void deveLancarExcecaoAoAtualizarChamadoInexistente(){
        when(chamadoRepository.findById(777L)).thenReturn(Optional.empty());

        ChamadoRequest request = new ChamadoRequest(
                "Computador não liga",
                "Computador do setor administrativo não liga",
                StatusChamado.EM_ATENDIMENTO,
                PrioridadeChamado.ALTA,
                "Jose Silva",
                "Carlos Oliveira"
        );

        assertThrows(ResourceNotFoundException.class, () -> chamadoService.atualizar(777L, request));

        verify(chamadoRepository).findById(777L);
        verify(chamadoRepository, never()).save(any(Chamado.class));
    }

    @Test
    void deveExcluirChamados() {
        Chamado chamado = new Chamado();
        chamado.setId(1L);
        when(chamadoRepository.findById(1L)).thenReturn(Optional.of(chamado));

        chamadoService.excluir(1L);

        verify(chamadoRepository).findById(1L);
        verify(chamadoRepository).delete(chamado);
    }

    @Test
    void deveLancarExcecaoAoExcluirChamadoInexistente() {
        when(chamadoRepository.findById(777L)).thenReturn(Optional.empty());
        assertThrows(ResourceNotFoundException.class, () -> chamadoService.excluir(777L));
        verify(chamadoRepository).findById(777L);
        verify(chamadoRepository, never()).delete(any(Chamado.class));
    }
}

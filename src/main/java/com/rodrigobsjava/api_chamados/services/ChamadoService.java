package com.rodrigobsjava.api_chamados.services;

import com.rodrigobsjava.api_chamados.dto.ChamadoRequest;
import com.rodrigobsjava.api_chamados.dto.ChamadoResponse;
import com.rodrigobsjava.api_chamados.entity.Chamado;
import com.rodrigobsjava.api_chamados.exception.ResourceNotFoundException;
import com.rodrigobsjava.api_chamados.repository.ChamadoRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class ChamadoService {

    private final ChamadoRepository chamadoRepository;

    public ChamadoService(ChamadoRepository chamadoRepository) {
        this.chamadoRepository = chamadoRepository;
    }

    // listar
    public List<ChamadoResponse> listarTodos() {
        return chamadoRepository.findAll().stream().map(this::toResponse).toList();
    }

    // listar por id
    public ChamadoResponse buscarPorId(Long id) {
        Chamado chamado = buscarEntidadePorId(id);

        return toResponse(chamado);
    }

    // criar
    public ChamadoResponse criar(ChamadoRequest request) {
        LocalDateTime agora = LocalDateTime.now();
        Chamado chamado = new Chamado();
        chamado.setTitulo(request.titulo());
        chamado.setDescricao(request.descricao());
        chamado.setStatus(request.status());
        chamado.setPrioridade(request.prioridade());
        chamado.setSolicitante(request.solicitante());
        chamado.setTecnicoResponsavel(request.tecnicoResponsavel());
        chamado.setDataAbertura(agora);
        chamado.setDataAtualizacao(agora);

        Chamado salvo = chamadoRepository.save(chamado);

        return toResponse(salvo);

    }

    // atualizar
    public ChamadoResponse atualizar(Long id, ChamadoRequest request) {
        Chamado chamadoExistente = buscarEntidadePorId(id);
        chamadoExistente.setTitulo(request.titulo());
        chamadoExistente.setDescricao(request.descricao());
        chamadoExistente.setStatus(request.status());
        chamadoExistente.setPrioridade(request.prioridade());
        chamadoExistente.setSolicitante(request.solicitante());
        chamadoExistente.setTecnicoResponsavel(request.tecnicoResponsavel());
        chamadoExistente.setDataAtualizacao(LocalDateTime.now());

        Chamado atualizado = chamadoRepository.save(chamadoExistente);

        return toResponse(atualizado);
    }

    // excluir
    public void excluir(Long id) {
        Chamado chamado = buscarEntidadePorId(id);
        chamadoRepository.delete(chamado);
    }

    private Chamado buscarEntidadePorId(Long id) {
        return chamadoRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Chamado de número " + id + " não encontrado!"));
    }

    private ChamadoResponse toResponse(Chamado chamado) {
        return new ChamadoResponse(
                chamado.getId(),
                chamado.getTitulo(),
                chamado.getDescricao(),
                chamado.getStatus(),
                chamado.getPrioridade(),
                chamado.getSolicitante(),
                chamado.getTecnicoResponsavel(),
                chamado.getDataAbertura(),
                chamado.getDataAtualizacao()
        );
    }
}

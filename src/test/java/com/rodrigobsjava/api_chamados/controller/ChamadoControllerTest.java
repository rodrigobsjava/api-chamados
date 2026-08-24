package com.rodrigobsjava.api_chamados.controller;

import com.rodrigobsjava.api_chamados.dto.ChamadoResponse;
import com.rodrigobsjava.api_chamados.enums.PrioridadeChamado;
import com.rodrigobsjava.api_chamados.enums.StatusChamado;
import com.rodrigobsjava.api_chamados.services.ChamadoService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.webmvc.test.autoconfigure.WebMvcTest;
import org.springframework.test.context.bean.override.mockito.MockitoBean;
import org.springframework.test.web.servlet.MockMvc;

import java.time.LocalDateTime;
import java.util.List;

import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@WebMvcTest(ChamadoController.class)
public class ChamadoControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockitoBean
    private ChamadoService chamadoService;

    ///api/chamados
    @Test
    void deveListarTodosOsChamados() throws Exception {
        ChamadoResponse chamado = new ChamadoResponse(1L,
                "Computador não liga",
                "Computador do setor administrativo não liga",
                StatusChamado.ABERTO,
                PrioridadeChamado.ALTA,
                "José Silva",
                "Carlos Oliveira",
                LocalDateTime.of(2026, 8, 24, 10, 0),
                LocalDateTime.of(2026, 8, 24, 10, 0)
        );

        when(chamadoService.listarTodos()).thenReturn(List.of(chamado));

        mockMvc.perform(get("/api/chamados"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$").isArray())
                .andExpect(jsonPath("$[0].id").value(1))
                .andExpect(jsonPath("$[0].titulo").value("Computador não liga"))
                .andExpect(jsonPath("$[0].descricao").value("Computador do setor administrativo não liga"));
        verify(chamadoService).listarTodos();
    }

    @Test
    void deveBuscaChamadoPorId() throws Exception {

    }
}

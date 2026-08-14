package com.rodrigobsjava.api_chamados.dto;

import com.rodrigobsjava.api_chamados.enums.PrioridadeChamado;
import com.rodrigobsjava.api_chamados.enums.StatusChamado;

import java.time.LocalDateTime;

public record ChamadoResponse(
        Long id,

        String titulo,

        String descricao,

        StatusChamado status,

        PrioridadeChamado prioridade,

        String solicitante,

        String tecnicoResponsavel,

        LocalDateTime dataAbertura,

        LocalDateTime dataAtualizacao
) {
}

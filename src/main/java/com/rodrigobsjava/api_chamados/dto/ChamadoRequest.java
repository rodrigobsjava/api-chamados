package com.rodrigobsjava.api_chamados.dto;

import com.rodrigobsjava.api_chamados.enums.PrioridadeChamado;
import com.rodrigobsjava.api_chamados.enums.StatusChamado;
import jakarta.persistence.Column;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

import java.time.LocalDateTime;

public record ChamadoRequest(

        @NotBlank(message = "O título é obrigatório")
        @Size(max = 150, message = "O título deve possuir no máximo 150 caracteres")
        String titulo,

        @NotBlank(message = "A descrição é obrigatória")
        String descricao,

        @NotNull(message = "O status é obrigatório")
        StatusChamado status,

        @NotNull(message = "A prioridade é obrigatório")
        PrioridadeChamado prioridade,

        @NotBlank(message = "O solicitante é obrigatório")
        String solicitante,

        @NotBlank(message = "O técnico responsável é obrigatório")
        String tecnicoResponsavel
) {
}

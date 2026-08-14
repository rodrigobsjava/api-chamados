package com.rodrigobsjava.api_chamados.controller;

import com.rodrigobsjava.api_chamados.dto.ChamadoRequest;
import com.rodrigobsjava.api_chamados.dto.ChamadoResponse;
import com.rodrigobsjava.api_chamados.entity.Chamado;
import com.rodrigobsjava.api_chamados.services.ChamadoService;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/chamados")
public class ChamadoController {

    private final ChamadoService chamadoService;

    public ChamadoController(ChamadoService chamadoService) {
        this.chamadoService = chamadoService;
    }

    // CRIAR
    @PostMapping
    public ResponseEntity<ChamadoResponse> criar(@Valid @RequestBody ChamadoRequest request) {
        ChamadoResponse response = chamadoService.criar(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    // LISTAR TODOS
    @GetMapping
    public ResponseEntity<List<ChamadoResponse>> listarTodos() {
        return ResponseEntity.ok(chamadoService.listarTodos());
    }

    // LISTAR POR ID
    @GetMapping("/{id}")
    public ResponseEntity<ChamadoResponse> listarPorId(@PathVariable Long id) {
        return ResponseEntity.ok(chamadoService.buscarPorId(id));
    }

    // ATUALIZAR
    @PutMapping("{id}")
    public ResponseEntity<ChamadoResponse> atualizar(@PathVariable Long id, @Valid @RequestBody ChamadoRequest request) {
        ChamadoResponse response = chamadoService.atualizar(id, request);
        return ResponseEntity.ok(response);
    }

    // DELETAR
    @DeleteMapping("{id}")
    public ResponseEntity<Void> excluir(@PathVariable Long id) {
        chamadoService.excluir(id);
        return ResponseEntity.noContent().build();
    }
}

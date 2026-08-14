package com.rodrigobsjava.api_chamados.repository;

import com.rodrigobsjava.api_chamados.entity.Chamado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChamadoRepository extends JpaRepository<Chamado, Long> {

}

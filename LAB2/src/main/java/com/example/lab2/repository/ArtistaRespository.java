package com.example.lab2.repository;

import com.example.lab2.entity.Artista;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ArtistaRespository extends JpaRepository<Artista,Integer> {

}

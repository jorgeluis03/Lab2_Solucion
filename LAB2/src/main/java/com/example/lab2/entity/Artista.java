package com.example.lab2.entity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "artistas")
public class Artista {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idartistas")
    private int idartistas;

    @Column(name = "nombregrupo")
    private String nombregrupo;

    @Column(name = "fechacreacion")
    private String fechacreacion;

    @Column (name = "tipomusica")
    private String tipomusica;
}

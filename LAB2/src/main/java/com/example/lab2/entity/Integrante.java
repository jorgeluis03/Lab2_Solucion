package com.example.lab2.entity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "integrantes")
public class Integrante {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idintegrantes")
    private int idintegrantes;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "edad")
    private int edad;

    @Column (name = "anhiosexp")
    private int anhiosexp;
    @Column(name = "rol")
    private String rol;

    @Column (name = "idartista")
    private int idartista;
}

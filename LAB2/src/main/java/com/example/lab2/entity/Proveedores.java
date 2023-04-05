package com.example.lab2.entity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "proveedores")
public class Proveedores {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idproveedores")
    private int idproveedores;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "telefono")
    private int telefono;

    @Column (name = "elemento")
    private String elemento;

}

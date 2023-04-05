package com.example.lab2.entity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "concierto")
public class Concierto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idconcierto")
    private int idconcierto;

    @Column(name = "fechaconcierto")
    private String fechaconcierto;

    @Column(name = "idproveedores")
    private int idproveedores;

    @Column (name = "idartista")
    private int idartista;
}

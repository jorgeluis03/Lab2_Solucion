package com.example.lab2.controller;

import com.example.lab2.entity.Proveedores;
import com.example.lab2.repository.ProveedorRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/proveedores")
public class ProveedorController {
    //################################################
    final ProveedorRepository proveedorRepository;

    public ProveedorController(ProveedorRepository proveedorRepository) {
        this.proveedorRepository = proveedorRepository;
    }
    //##################################################

    @GetMapping("/listar")
    public String listar(Model model){
        List<Proveedores> listaProveedores = proveedorRepository.findAll();
        model.addAttribute("listaProveedores", listaProveedores);
        return "proveedor/listaProveedores";
    }
    //-----------------------------------------------------



}

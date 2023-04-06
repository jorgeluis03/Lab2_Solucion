package com.example.lab2.controller;

import com.example.lab2.entity.Integrante;
import com.example.lab2.repository.IntegranteRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/integrantes")
public class IntegranteController {

    //###############################33
    final IntegranteRepository integranteRepository;

    public IntegranteController(IntegranteRepository integranteRepository) {
        this.integranteRepository = integranteRepository;
    }
    //#########################################

    @GetMapping("/listar")
    public String listarIntegrantes (Model model){
        List<Integrante> listarIntegrantes = integranteRepository.findAll();
        model.addAttribute("listaIntegrantes",listarIntegrantes);
        return "integrante/listaIntegrantes";
    }
    @GetMapping("/FormNuevo")
    public String nuevoIntegrante (){
        return "artista/formNuevo";
    }
    @PostMapping("/guardar")
    public String guardar(Integrante integrante){
        integranteRepository.save(integrante);
        return "redirect:/integrantes/listar";

    }
    @GetMapping("/editar")
    public String editar(Model model, @RequestParam("id") int id){
        //Econtrar si existe el id del onjeto
        Optional<Integrante> optIntegrante = integranteRepository.findById(id);
        //si lo encontró entonces lo trae con get
        if(optIntegrante.isPresent()){
            Integrante integrante = optIntegrante.get();
            //mandamos el objeto a la vista para editar
            model.addAttribute("integrante",integrante );
            return "integrante/formEditar";
        }else {
            return "redirect:/integrante/listar";
        }

    }




}

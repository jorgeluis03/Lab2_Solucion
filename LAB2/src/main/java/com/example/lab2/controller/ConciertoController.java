package com.example.lab2.controller;

import com.example.lab2.entity.Concierto;
import com.example.lab2.repository.ConciertoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/conciertos")
public class ConciertoController {
    //##################################333
    final ConciertoRepository conciertoRepository;

    public ConciertoController(ConciertoRepository conciertoRepository) {
        this.conciertoRepository = conciertoRepository;
    }
    //#####################################

    @GetMapping("/listar")
    public String listar(Model model){
        List<Concierto> lsitaConcierto = conciertoRepository.findAll();
        model.addAttribute("listaConciertos", lsitaConcierto);

        return "concierto/listaConciertos";
    }
    @GetMapping("/nuevo")
    public String nuevo (){
        return "concierto/formNuevo";
    }
    @PostMapping("/guardar")
    public String guardar (Concierto concierto){
        conciertoRepository.save(concierto);
        return "redirect:/conciertos/listar";
    }

}

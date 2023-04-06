package com.example.lab2.controller;

import com.example.lab2.entity.Artista;
import com.example.lab2.repository.ArtistaRespository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/artista")
public class ArtistaController {
    //##################################333
    final ArtistaRespository artistaRespository;

    public ArtistaController(ArtistaRespository artistaRespository) {
        this.artistaRespository = artistaRespository;
    }
    //###################################################

    public String listaDistribuidoras(Model model){
        List<Artista> listaDistribuidores = artistaRespository.findAll();
        model.addAttribute("lista",listaDistribuidores);
        return "artista/listaArtistas";
    }

}

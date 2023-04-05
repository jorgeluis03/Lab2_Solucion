package com.example.lab2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/listaConciertos")
    public String listaConciertos (Model model){

        return "listaConciertos";
    }

}

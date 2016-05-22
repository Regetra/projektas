package info.ernestas.simple.springexample.web.controller;

import core.service.GrupeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Kategorijos")
public class CategoryController {

    @Autowired
    private GrupeService grupeService;

    @RequestMapping("/")
    public String getAllNames(Model model) {
        model.addAttribute("grupes", grupeService.findAllGrupe());
        return "categories";
    }

}

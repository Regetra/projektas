package info.ernestas.simple.springexample.web.controller;

import core.service.DarbuotojasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Personalas")
public class PersonellController {

    @Autowired
    private DarbuotojasService darbService;

    @RequestMapping("/")
    public String getAllNames(Model model){    model.addAttribute("persons", darbService.findAllDarb());
        return "Personel";
    }

}

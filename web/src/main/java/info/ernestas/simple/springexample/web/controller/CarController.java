package info.ernestas.simple.springexample.web.controller;

import core.service.AutomobilisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Auto")
public class CarController {

    @Autowired
    private AutomobilisService autoService;

    @RequestMapping("/")
    public String getAllNames(Model model) {
        model.addAttribute("cars", autoService.findAllAuto());
        return "cars";
    }

}

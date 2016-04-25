package info.ernestas.simple.springexample.web.controller;

import core.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Info")
public class InfoController {

    @Autowired
    private PersonService personService;

    @RequestMapping("/")
    public String getAllNames(Model model) {
        model.addAttribute("persons", personService.findAllNames());
        return "persons";
    }

}

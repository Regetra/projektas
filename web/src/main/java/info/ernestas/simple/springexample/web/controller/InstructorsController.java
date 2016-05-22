package info.ernestas.simple.springexample.web.controller;

import core.service.InstruktoriusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/inst")
public class InstructorsController {

    @Autowired
    private InstruktoriusService service;

    @RequestMapping(value = "/")
    public String getAllNames(Model model) {
        model.addAttribute("instructors",service.findAllInst());
        return "instructors";
    }



}

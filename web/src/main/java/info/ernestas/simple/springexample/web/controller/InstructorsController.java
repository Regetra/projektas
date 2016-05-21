package info.ernestas.simple.springexample.web.controller;

import core.service.InstruktoriusService;
import info.ernestas.simple.springexample.web.model.ArithmeticForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

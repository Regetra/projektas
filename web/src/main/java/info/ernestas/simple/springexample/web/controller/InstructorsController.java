package info.ernestas.simple.springexample.web.controller;

import core.service.ArithmeticFunctionsService;
import info.ernestas.simple.springexample.web.model.ArithmeticForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/Instruktoriai")
public class InstructorsController {

    @Autowired
    private ArithmeticFunctionsService arithmeticFunctionsService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getDefaultArithmeticPage(Model model) {
        model.addAttribute("form", new ArithmeticForm());
        return "arithmetic";
    }


}

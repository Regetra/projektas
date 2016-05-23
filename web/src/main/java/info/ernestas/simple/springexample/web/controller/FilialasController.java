package info.ernestas.simple.springexample.web.controller;

import core.service.FilialasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/Fil")
public class FilialasController {

    @Autowired
    private FilialasService service;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getAllNames(Model model) {
        model.addAttribute("filialas",service.findAllFili() );
        return "filials";
    }


}

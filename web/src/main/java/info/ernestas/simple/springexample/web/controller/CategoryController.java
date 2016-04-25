package info.ernestas.simple.springexample.web.controller;

import core.service.NameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/kategorijos")
public class CategoryController {

    @Autowired
    private NameService nameService;

    @RequestMapping("/")
    public String showHouse(Model model) {
        return "show";
    }

}

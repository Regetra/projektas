package info.ernestas.simple.springexample.web.controller;

import core.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Auto")
public class CarController {

    @Autowired
    private CarService carService;

    @RequestMapping("/")
    public String getAllNames(Model model) {

        return "cars";
    }

}

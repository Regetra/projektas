package info.ernestas.simple.springexample.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistryController {

    @RequestMapping(value = "/Reg", method = RequestMethod.GET)
    public String showIndex() {
        return "registration";
    }

}

package info.ernestas.simple.springexample.web.controller;

import core.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Personalas")
public class PersonellController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/")
    public String getAllNames(Model model) {
        return "students";
    }

}

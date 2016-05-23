package info.ernestas.simple.springexample.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {
    @RequestMapping(value = "/")
    public String showIndex() {
        return "login";
    }

    @RequestMapping(value = "/success",method = RequestMethod.GET)
    public String showIndex2() {
        return "success";
    }

    @RequestMapping(value = "/failure",method = RequestMethod.GET)
    public String showIndex1() {
        return "failure";
    }

    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String showIndex3() {
        return "logout";
    }

    @RequestMapping(value = "/reg",method = RequestMethod.GET)
    public String showIndex4() {
        return "registration";
    }

}

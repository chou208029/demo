package com.example.blocktrain.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.blocktrain.web.service.LoginService;

@Controller
public class HomeController {

    LoginService service;

    @RequestMapping(value="/home", method = RequestMethod.GET)
    public String showHomePage(ModelMap model){
        return "home";
    }


}

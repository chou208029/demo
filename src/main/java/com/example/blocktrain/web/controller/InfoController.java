package com.example.blocktrain.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InfoController {
	
	@RequestMapping(value="/info", method = RequestMethod.GET)
    public String showInfoPage(ModelMap model){
        return "info";
    }

}

package com.example.blocktrain.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StockAccountingController {
	
	@RequestMapping(value="/stock-accounting", method = RequestMethod.GET)
	public String showSAPage(ModelMap model) {
		return "stock-accounting";
	}
}

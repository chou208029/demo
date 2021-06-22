package com.example.blocktrain.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {
	
	@RequestMapping(value="/product", method = RequestMethod.GET)
	public String showProductPage(ModelMap model) {
		return "product";
	}
	
	@RequestMapping(value="/product/edit", method = RequestMethod.GET)
	public String editProduct(ModelMap model) {
		System.out.println("Product Edit.");
		return "product";
	}

}

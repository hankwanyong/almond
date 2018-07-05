package com.seeroo.almond.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/web")
public class WebTestController extends ComnWebController{

	@RequestMapping("/videoTest")
	public ModelAndView videoTest() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("videoStreamTest");
		return mv;
	}
	
	@RequestMapping("/downTest")
	public ModelAndView downTest() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("downTest");
		return mv;
	}
	
}

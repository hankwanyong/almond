package com.seeroo.almond.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@ResponseBody
	@RequestMapping(value="/videoSeq")
	public String videoStringChkTest() {
		String videoUrl = null;
		super.log.info("비디오 URL 호출 시작");
		videoUrl = "http://192.168.0.211/stream/test7/video.m3u8";
		super.log.info("비디오 URL 호출 성공");
		return videoUrl;
	}
	
}

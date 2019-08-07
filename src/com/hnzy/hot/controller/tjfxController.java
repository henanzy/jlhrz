package com.hnzy.hot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;

@RequestMapping("tjfxCon")
@Controller
public class tjfxController {

	
	@RequestMapping("tjfx")
	public String tjfx(){
		return "hrz/tongjfx2";
	}
	
	@RequestMapping("tjfxByname")
	@ResponseBody
	public JSONObject tjfx(String name){
		
		System.out.println(name);
		JSONObject js=new JSONObject();
		String aa="[43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]";
		js.put("csv", aa);
		return js;
	}
}

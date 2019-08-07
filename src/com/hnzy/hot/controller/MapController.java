package com.hnzy.hot.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;

@RequestMapping("MapCon")
@Controller
public class MapController {
	
	 
	@RequestMapping("Map")
	public String selMap(){
		return "hrz/map";
		
	}

	@RequestMapping("findJW")
	@ResponseBody
	public JSONObject findJW(){
		JSONObject js=new JSONObject();
		js.put("js",1);
		return js;	
	}
}

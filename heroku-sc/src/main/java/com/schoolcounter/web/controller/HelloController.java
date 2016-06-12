package com.schoolcounter.web.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sc.dto.SCDto;
import com.sc.manager.SCQueryManagerImpl;

@Controller
public class HelloController {

	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {

		model.addAttribute("message", "Spring 3 MVC Hello World");
		return "hello";

	}*/

	/*@RequestMapping(value = "/hello/{name:.+}", method = RequestMethod.GET)
	public ModelAndView hello(@PathVariable("name") String name) {

		ModelAndView model = new ModelAndView();
		model.setViewName("hello");
		model.addObject("msg", name);

		return model;

	}*/
	
	@Autowired
	private SCQueryManagerImpl scQueryManagerImpl; 
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView hello() {

		ModelAndView model = new ModelAndView();
		model.setViewName("hello");
		model.addObject("msg", "yellow");
		
		List<SCDto> propertys= scQueryManagerImpl.findAllSchools();
		
		for(SCDto property : propertys){
			System.out.println(property.getSchoolName());
		}
		
		model.addObject("propertys", propertys);
		return model;
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
    public ModelAndView search(@RequestParam("dropdownCity") String dropdown) {
		ModelAndView model = new ModelAndView();
		List<SCDto> propertys= scQueryManagerImpl.findSchoolsInCity(dropdown);				
		model.addObject("propertys", propertys);
		model.addObject("dropdown", dropdown);
		model.setViewName("city");
		return model;
	}
	
	@RequestMapping(value = "/filterSc", method = RequestMethod.POST)
    public ModelAndView filter(@RequestParam(value="Areas", required=false) String[] Areas, @RequestParam(value="Ownership", required=false) String[] Ownership ) {
		ModelAndView model = new ModelAndView();
		
		List<String> areaString= new ArrayList<String>();
		areaString= Arrays.asList(Areas);
		System.out.println(areaString);
		
		List<String> ownershipString= new ArrayList<String>();
		ownershipString= Arrays.asList(Ownership);
		System.out.println(ownershipString);
		
		List<SCDto> propertys= scQueryManagerImpl.findSchoolsUsingFilters(Areas, Ownership);
		model.addObject("propertys", propertys);
		model.setViewName("area");
		return model;
	}
	
	

}
package com.itn.realestate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itn.realestate.entity.PropertyType;
import com.itn.realestate.service.PropertyTypeService;

@Controller
public class PropertyTypeController {
	
	private PropertyTypeService propertyTypeService;
	
	public PropertyTypeController(PropertyTypeService propertyTypeService) {
		this.propertyTypeService = propertyTypeService;
	}
	
	@GetMapping("/admin/type/add")
	public String addType() {
		return "admin/property_type";
		
	}
	
	@PostMapping("/admin/type/add")
	public String saveType(@RequestParam String name,
							@RequestParam String description, 
							@RequestParam String enable) {
						
		PropertyType type = new PropertyType();
		type.setName(name);
		type.setDescription(description);
		type.setEnable(enable);
		
		//further process this entity in service and forward to repository in order to save this
		propertyTypeService.savePropertyType(type);
		
		return "redirect:/admin/type/add";
	}
	
	@GetMapping("/admin/type/show")
	public ModelAndView showPropertyType(ModelAndView modelView) {
		modelView.setViewName("admin/property_type");
		modelView.addObject("type_list", propertyTypeService.getAllProperties());
		return modelView;
	}
	
	@GetMapping("/admin/type/edit/{id}")
	public String editType(@PathVariable int id, Model model) {
		model.addAttribute("p_type", propertyTypeService.getPropertyTypeById(id));
		model.addAttribute("edit", true);
		return "admin/property_type";
		
	}
	
	@PostMapping("/admin/type/edit")
	public String updateType(@ModelAttribute PropertyType propertyType) {
						
		//further process this entity in service and forward to repository in order to save this
		propertyTypeService.updatePropertyType(propertyType);
		
		return "redirect:/admin/type/show";
	}
	
	@GetMapping("admin/type/delete/{id}")
	public String deletePropertyType(@PathVariable int id) {
		PropertyType pType = new PropertyType();
		pType.setId(id);
		propertyTypeService.deletePropertyType(pType);
		return "redirect:/admin/type/show";
	}

}

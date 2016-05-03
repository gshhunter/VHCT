package com.health.travel;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.health.entity.GP;
import com.health.entity.Hospital;
import com.health.service.GPService;
import com.health.service.HospitalService;
import com.health.util.ValidateNumOrString;

@Controller
@RequestMapping("/hospital")
public class HospitalController {
	
	private static final Logger logger = LoggerFactory.getLogger(HospitalController.class);
	
	@Autowired
	private HospitalService hospitalService;
	@Autowired
	private GPService gpService;
	
	/**
	 * Show all list by search
	 */
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(Model model, @RequestParam String input, @RequestParam(value="medicalType", required=false) String medicalType,
			@RequestParam(value="language", required=false) String language) {
		logger.info("Medical Type: " + medicalType + " || Language Service: " + language);
		boolean isPostcode = ValidateNumOrString.isPostcode(input);
		Gson gson = new Gson();
		//input data transfer to front end
		model.addAttribute("input", input);
		model.addAttribute("type", medicalType);
		model.addAttribute("language", language);
		
		if ("".equals(input.trim()) || input == null) {
			return null;
		} else {
			
			if (isPostcode) {
				
				//Transfer from String to Integer
				int postcode = Integer.parseInt(input);
				
				if ("AH".equals(medicalType)) {
					//search by post code
					
					List<Hospital> hospitals = hospitalService.findHospitalByPostCode(postcode);
					logger.info("Post Code: " + hospitals.size());
					//Send list to front end
					model.addAttribute("hospitals", hospitals);
					//Send json to front end
					model.addAttribute("jsonh", gson.toJson(hospitals));
					return "hospital";
					
				} else if ("Emergency".equals(medicalType)) {
					//search by post code and medical type
					List<Hospital> hospitals = hospitalService.findEmergencyHospitalByPostcode(postcode);
				    logger.info("Postcode + Emergency: " + hospitals.size());
				    //Send list to front end
				    model.addAttribute("hospitals", hospitals);
				    //Send json to front end
					model.addAttribute("jsonh", gson.toJson(hospitals));
					return "hospital";
					
				} else if ("General Practitioner".equals(medicalType)) {
					if ("DL".equals(language)) {
						List<GP> doctors = gpService.findGPByPostcode(postcode);
						logger.info("User search GP by post code: " + postcode);
						//Send list to front end
					    model.addAttribute("doctors", doctors);
					    //Send json to front end
						model.addAttribute("jsong", gson.toJson(doctors));
						return "gp";
					} else {
						List<GP> doctors = gpService.findGPByPostcodeAndLanguage(postcode, language);
						logger.info("User search GP by post code: " + postcode + " and language: " + language);
						//Send list to front end
					    model.addAttribute("doctors", doctors);
					    //Send json to front end
						model.addAttribute("jsong", gson.toJson(doctors));
						return "gp";
					}
				} else if ("Pharmacy".equals(medicalType)) {
					
					
					return "pharmacy";
				} else {
					return "error";
				}
			} else {
				if ("AH".equals(medicalType)) {
					//search by suburb
					List<Hospital> hospitals = hospitalService.findHospitalBySuburb(input);
					logger.info("Suburb: " + hospitals.size());
					//Send list to front end
					model.addAttribute("hospitals", hospitals);
					//Send json to front end
					model.addAttribute("jsonh", gson.toJson(hospitals));
					return "hospital";
					
				} else if ("Emergency".equals(medicalType)) {
					//search by suburb and medical type
					List<Hospital> hospitals = hospitalService.findEmergencyHospitalBySuburb(input);
				    logger.info("Suburb + Medical: " + hospitals.size());
				    //Send list to front end
				    model.addAttribute("hospitals", hospitals);
				    //Send json to front end
					model.addAttribute("jsonh", gson.toJson(hospitals));
					return "hospital";
					
				} else if ("General Practitioner".equals(medicalType)) {
					if ("DL".equals(language)) {
						List<GP> doctors = gpService.findGPBySuburb(input);
						logger.info("User search GP by suburb: " + input);
						//Send list to front end
					    model.addAttribute("doctors", doctors);
					    //Send json to front end
						model.addAttribute("jsong", gson.toJson(doctors));
						return "gp";
						
					} else {
						List<GP> doctors = gpService.findGPBySuburbAndLanguage(input, language);
						logger.info("User search GP by suburb: " + input + " and language: " + language);
						//Send list to front end
					    model.addAttribute("doctors", doctors);
					    //Send json to front end
						model.addAttribute("jsong", gson.toJson(doctors));
						return "gp";
						
					}
				} else if ("Pharmacy".equals(medicalType)) {
					return "pharmacy";
				} else {
					return "error";
				}
			}
		}
	}
	
	/**
	 * View detail of a hospital
	 */
	@RequestMapping(value = "/detail/{hid}", method = RequestMethod.GET)
	public String viewDetail(Model model, @PathVariable(value = "hid") String hid) {
		logger.info("The hospital id: " + hid);
		Hospital hospital = hospitalService.findHospitalById(Integer.parseInt(hid));
		model.addAttribute("hospital", hospital);
		return "hos_detail";
	}
	
	
	@RequestMapping(value = "/gp_detail/{gpid}", method = RequestMethod.GET)
	public String viewGPDetail(Model model, @PathVariable(value = "gpid") String gpid) {
		logger.info("The GP id: " + gpid);
		GP doctor = gpService.findGPById(Integer.parseInt(gpid));
		model.addAttribute("doctor", doctor);
		return "gp_detail";
	}
}

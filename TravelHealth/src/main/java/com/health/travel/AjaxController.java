package com.health.travel;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.health.entity.Tlocation;
import com.health.service.LocationService;
import com.health.util.ValidateNumOrString;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

	@Autowired
	private LocationService locationService; 
	
	@RequestMapping(value="/automatch", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody List<Tlocation> getLocations(@RequestParam String term, HttpServletResponse response) {
		if (ValidateNumOrString.isNum(term)) {
			List<Tlocation> list = locationService.findLocationByPostcode(Integer.parseInt(term));
			return list;
		} else {
			List<Tlocation> list = locationService.findLocationLikeSuburb(term);
			return list;
		}
		
	}
}

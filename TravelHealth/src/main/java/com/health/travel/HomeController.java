package com.health.travel;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	/**
	 * Redirect to Our Team page
	 */
	@RequestMapping(value="/ourteam", method = RequestMethod.GET)
	public String ourteam(Locale locale, Model model) {
        logger.info("Our Team page! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "ourteam";
	}
	
	/**
	 * Redirect to search page
	 */
	@RequestMapping(value="/searchPage", method = RequestMethod.GET)
	public String searchPage(Locale locale, Model model) {
        logger.info("Search page! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "hospital";
	}
	
	/**
	 * Redirect to warning page
	 */
	@RequestMapping(value="/warning", method = RequestMethod.GET)
	public String warnings(Locale locale, Model model) {
        logger.info("Warning page! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "warning";
	}
	
	/**
	 * Redirect to weather page
	 */
	@RequestMapping(value="/weather", method = RequestMethod.GET)
	public String weather(Locale locale, Model model) {
        logger.info("Weather page! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "weather";
	}
	
	/**
	 * Redirect to FAQs page
	 */
	@RequestMapping(value="/faq", method = RequestMethod.GET)
	public String faq(Locale locale, Model model) {
        logger.info("FAQ page! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "faq";
	}
	
	/**
	 * Redirect to Facts page
	 */
	@RequestMapping(value="/facts", method = RequestMethod.GET)
	public String fact(Locale locale, Model model) {
        logger.info("Facts page! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "facts";
	}
	
	/**
	 * Redirect to Error page
	 */
	@RequestMapping(value="/error", method = RequestMethod.GET)
	public String error(Locale locale, Model model) {
        logger.info("Error page! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "error";
	}
	
	/**
	 * Redirect to Transport page
	 */
	@RequestMapping(value="/transport", method = RequestMethod.GET)
	public String transport(Locale locale, Model model) {
        logger.info("Transport page! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "transport";
	}
	
	/**
	 * Redirect to Transport page
	 */
	@RequestMapping(value="/terms", method = RequestMethod.GET)
	public String terms(Locale locale, Model model) {
        logger.info("Terms page! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return "terms";
	}
	
}

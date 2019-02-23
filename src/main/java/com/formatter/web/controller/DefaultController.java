package com.formatter.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.formatter.json.PrettyJson;
import com.formatter.model.Contact;
import com.formatter.services.MailService;
import com.formatter.xml.PrettyXml;

@Controller
public class DefaultController {

	@Autowired
	MailService mailService;

	static final Logger LOGGER = LogManager.getLogger(DefaultController.class);
	private static final String INDEX = "index";

	@GetMapping("/")
	public ModelAndView homePage(HttpServletRequest request) {
		LOGGER.info("Index page");
		ModelAndView model = new ModelAndView();
		model.setViewName(INDEX);
		return model;
	}

	@PostMapping(value = "/prettyJson")
	public ModelAndView prettyJson(@RequestParam(value = "jsonText", required = true) String jsonText) {

		String jsonResult = "";
		ModelAndView model = new ModelAndView();

		LOGGER.info("Original JSON:\n" + jsonText);

		if (!jsonText.isEmpty()) {
			try {
				jsonResult = PrettyJson.toPrettyFormat(jsonText);
				LOGGER.info("Formatted JSON:\n" + jsonResult);
				model.setViewName(INDEX);
				model.addObject("jsonResult", jsonResult);
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);
				model.setViewName(INDEX);
				return model;
			}
		} else {
			LOGGER.error("Text is Empty");
			return model;
		}

		return model;
	}

	@PostMapping(value = "/prettyXml")
	public ModelAndView prettyXml(@RequestParam(value = "xmlText", required = true) String xmlText) {

		String xmlResult = "";
		ModelAndView model = new ModelAndView();

		LOGGER.info("Original XML:\n" + xmlText);

		if (!xmlText.isEmpty()) {
			try {
				xmlResult = PrettyXml.toPrettyFormat(xmlText);
				LOGGER.info("Formatted XML:\n" + xmlResult);
				model.setViewName(INDEX);
				model.addObject("xmlResult", xmlResult);
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);
				model.setViewName(INDEX);
				return model;
			}
		} else {
			LOGGER.error("Text is Empty");
			return model;
		}

		return model;
	}

	@PostMapping(value = "/prettyHtml")
	public ModelAndView prettyHtml(@RequestParam(value = "htmlText", required = true) String htmlText) {
		String htmlResult = "";
		ModelAndView model = new ModelAndView();

		// TO DO

		return model;
	}

	@PostMapping(value = "/prettyJavascript")
	public ModelAndView prettyJavascript(@RequestParam(value = "javascriptText", required = true) String javascriptText) {
		String javascriptResult = "";	
		ModelAndView model = new ModelAndView();

		// TO DO

		return model;
	}

	@PostMapping(value = "/prettyCss")
	public ModelAndView prettyCss(@RequestParam(value = "cssText", required = true) String cssText) {
		String cssResult = "";
		ModelAndView model = new ModelAndView();

		// TO DO

		return model;
	}

	@PostMapping(value = "/prettySql")
	public ModelAndView prettySql(@RequestParam(value = "sqlText", required = true) String sqlText) {
		String sqlResult = "";
		ModelAndView model = new ModelAndView();

		// TO DO

		return model;
	}

	@PostMapping(value = "/prettyJava")
	public ModelAndView prettyJava(@RequestParam(value = "javaText", required = true) String javaText) {
		String javaResult = "";
		ModelAndView model = new ModelAndView();

		// TO DO

		return model;
	}

	@PostMapping(value = "/contact")
	public String contact(@RequestParam(value = "contactName", required = true) String name,
			@RequestParam(value = "contactEmail", required = true) String email,
			@RequestParam(value = "contactMessage", required = true) String message) {

		Contact contact = new Contact();
		contact.setName(name);
		contact.setEmail(email);
		contact.setMessage(message);
		if (null != contact.getName() && null != contact.getEmail() && null != contact.getMessage()) {
			LOGGER.info("The user " + name + " Triying to Contact you.");
			LOGGER.info("The user email is : " + email);
			try {
				mailService.sendMail(contact);
				return INDEX;
			} catch (Exception e) {
				LOGGER.error(e.getMessage(), e);
				return "error";
			}
		} else {
			LOGGER.error("Some informations are missing in Contact form.");
			return "error";
		}
	}
}

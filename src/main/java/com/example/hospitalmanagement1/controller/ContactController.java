package com.example.hospitalmanagement1.controller;
import com.example.hospitalmanagement1.model.Contact;
import com.example.hospitalmanagement1.Service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactController {

    @Autowired
    ContactService contactservice;

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public ModelAndView show() {
        return new ModelAndView("contact", "cont", new Contact());
    }

    @RequestMapping(value = "/contact", method = RequestMethod.POST)
    public ModelAndView processRequest(@ModelAttribute("cont") Contact cont) {
        contactservice.insertContact(cont);
        ModelAndView modelAndView = new ModelAndView("contact_done");
        modelAndView.addObject("contact",cont);
        return modelAndView;
    }
}

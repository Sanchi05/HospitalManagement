package com.example.hospitalmanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PresController {
    @Autowired
    PresService presService;


    @RequestMapping(value = "/newPrescription",method = RequestMethod.GET)
    public ModelAndView show(){
        return new ModelAndView("prescription","pres",new Prescription());
    }
    //
    @RequestMapping(value = "/newPrescription", method = RequestMethod.POST)
    public ModelAndView addNewPres(@ModelAttribute("pres") Prescription pres){
        presService.insertPres(pres);
        ModelAndView modelAndView = new ModelAndView("pres_done");
        modelAndView.addObject("prescription",pres);
        return  modelAndView;
    }





}

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
    @Autowired
    PatientService patientService;


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

    @RequestMapping(value = "/searchPatient", method = RequestMethod.GET)
    public ModelAndView searchPatient(){
        return new ModelAndView("view_patient","search",new Patient());
    }

    @RequestMapping(value = "/searchPatient",method = RequestMethod.POST)
    public ModelAndView viewPatient(@ModelAttribute("search") @RequestParam("pt_id") int id){
        System.out.println(id);
        Patient patient1 = patientService.findPatientById(id);
        System.out.println(patient1.getPt_gender());
        //System.out.println(patient1);
        ModelAndView model = new ModelAndView("view_patient");
        model.addObject("search",patient1);
        //System.out.println(patient1);
        return model;
    }





}

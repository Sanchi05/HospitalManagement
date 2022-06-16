package com.example.hospitalmanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PatientController {
    @Autowired
    PatientService patientService;

    @RequestMapping(value = "/searchPatient", method = RequestMethod.GET)
    public ModelAndView searchPatient(){
        return new ModelAndView("view_patient","search",new Patient());
    }

    @RequestMapping(value = "/searchPatient",method = RequestMethod.POST)
    public ModelAndView viewPatient(@ModelAttribute("search") @RequestParam("pt_id") int id){
        System.out.println(id);
        Patient patient1 = patientService.findPatientById(id);
        //System.out.println(patient1);
        ModelAndView model = new ModelAndView("pres_done");
        model.addObject("message",patient1);
        //System.out.println(patient1);
        return model;
    }
}

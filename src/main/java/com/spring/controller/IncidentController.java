package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.model.Incident;
import com.spring.service.IncidentService;
@RestController
public class IncidentController {
	@Autowired
	private IncidentService incService;
	
	@RequestMapping(value="inc/search/{key}" ,produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<Incident>> search(@PathVariable("key") String key) {
		
		List<Incident> inc = incService.search(key);
			
		if(inc.isEmpty()){
            return new ResponseEntity<List<Incident>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Incident>>(inc, HttpStatus.OK);
		
	}
	@RequestMapping(value="inc/jsonlist/{month}/{year}")
	public ResponseEntity<List<Incident>> listOfIncidents(@PathVariable("month") int month,@PathVariable("year") int year) {
		System.out.println("************"+month+"/"+year);
		String m = Integer.toString(month);
		String y = Integer.toString(year);
		List<Incident> inc = incService.getAllIncident(m,y);
			
		if(inc.isEmpty()){
            return new ResponseEntity<List<Incident>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Incident>>(inc, HttpStatus.OK);
		
	}
	//-------------------Retrieve Single INC--------------------------------------------------------
    
    @RequestMapping(value = "/inc/pageDetails/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Incident> getIncident(@PathVariable("id") int id) {
    	System.out.println("INC with id ***********");
        
    	Incident inc = incService.getIncident(id);
        if (inc == null) {
            System.out.println("INC with id " + id + " not found");
            return new ResponseEntity<Incident>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<Incident>(inc, HttpStatus.OK);
    }
    
  //-------------------Create a INC--------------------------------------------------------
    
    @RequestMapping(value = "/inc/create", method = RequestMethod.POST)
    public ResponseEntity<Incident> createInc(@RequestBody Incident inc) {
    	if (incService.isIncidentExist(inc)) {
    		System.out.println("not created*******");
    		return new ResponseEntity<Incident>(incService.findByIncidentNumber(inc.getIncNumber()), HttpStatus.CONFLICT);
        	
        }else{
        	System.out.println("created");
    		return new ResponseEntity<Incident>(incService.addIncident(inc), HttpStatus.CREATED);
        	
        }
    	
    }
  
     
      
    //------------------- Update a INC --------------------------------------------------------
      
    @RequestMapping(value = "/inc/update", method = RequestMethod.POST)
    public ResponseEntity<Incident> updateInc( @RequestBody Incident inc) {
        System.out.println("Updating Inc ============= -" + inc.getId());
        
          
        Incident  currentInc = incService.getIncident(inc.getId());
          
        if (currentInc==null) {
            System.out.println("inc with id " + inc.getId() + " not found");
            return new ResponseEntity<Incident>(HttpStatus.NOT_FOUND);
        }
  
        currentInc.setDescription(inc.getDescription());
        currentInc.setIncNumber(inc.getIncNumber());
        currentInc.setIssue(inc.getIssue());
        currentInc.setIssueDate(inc.getIssueDate());
        currentInc.setPickByTcs(inc.getPickByTcs());
        currentInc.setPriority(inc.getPriority());
        currentInc.setResolution(inc.getResolution());
        currentInc.setSolveBy(inc.getSolveBy());
        currentInc.setIncStatus(inc.getIncStatus());
        
          
        incService.updateIncident(currentInc);
        return new ResponseEntity<Incident>(currentInc, HttpStatus.OK);
    }
    
  //------------------- Delete a Inc --------------------------------------------------------
    
    @RequestMapping(value = "/inc/{id}/delete", method = RequestMethod.DELETE)
    public ResponseEntity<Incident> deleteInc(@PathVariable("id") int id) {
        
    	Incident inc = incService.getIncident(id);
        if (inc == null) {
            return new ResponseEntity<Incident>(HttpStatus.NOT_FOUND);
        }
  
        incService.deleteIncident(id);
        return new ResponseEntity<Incident>(HttpStatus.NO_CONTENT);
    }
  
}

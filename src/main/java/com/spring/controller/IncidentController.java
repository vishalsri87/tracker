package com.spring.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.List;
import org.springframework.http.MediaType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.HttpHeaders;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.util.UriComponentsBuilder;

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
	@RequestMapping(value="inc/jsonlist")
	public ResponseEntity<List<Incident>> listOfIncidents() {
		
		List<Incident> inc = incService.getAllIncident();
			
		if(inc.isEmpty()){
            return new ResponseEntity<List<Incident>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Incident>>(inc, HttpStatus.OK);
		
	}
	//-------------------Retrieve Single INC--------------------------------------------------------
    
    @RequestMapping(value = "/inc/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Incident> getIncident(@PathVariable("id") int id) {
    	Incident inc = incService.getIncident(id);
        if (inc == null) {
            System.out.println("INC with id " + id + " not found");
            return new ResponseEntity<Incident>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<Incident>(inc, HttpStatus.OK);
    }
    
  //-------------------Create a INC--------------------------------------------------------
    
    @RequestMapping(value = "/inc/create", method = RequestMethod.POST)
    public ResponseEntity<Void> createInc(@RequestBody Incident inc,    UriComponentsBuilder ucBuilder) {
    	System.out.println("A Inc with inc number " + inc.getIncNumber() );
    	System.out.println("A Inc with inc number " + inc.toString() );
        /*if (incService.isIncidentExist(inc)) {
            System.out.println("A Inc with inc number " + inc.getIncNumber() + " already exist");
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);
        }*/
    	   
  
        incService.addIncident(inc);
  
        //HttpHeaders headers = new HttpHeaders();
        //headers.setLocation(ucBuilder.path("/inc/{id}").buildAndExpand(inc.getId()).toUri());
        return new ResponseEntity<Void>(HttpStatus.CREATED);
    }
  
     
      
    //------------------- Update a INC --------------------------------------------------------
      
    @RequestMapping(value = "/inc/{id}/update", method = RequestMethod.PUT)
    public ResponseEntity<Incident> updateInc(@PathVariable("id") int id, @RequestBody Incident inc) {
        System.out.println("Updating Inc " + id);
          
        Incident  currentInc = incService.getIncident(id);
          
        if (currentInc==null) {
            System.out.println("inc with id " + id + " not found");
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

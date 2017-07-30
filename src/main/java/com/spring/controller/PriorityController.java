package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.model.Incident;
import com.spring.model.Priority;
import com.spring.service.PriorityService;
@RestController
public class PriorityController {
	@Autowired
	private PriorityService priorityService;
	
	@RequestMapping(value="priority/jsonlist")
	public ResponseEntity<List<Priority>> listOfPriority() {
		
		List<Priority> priority = priorityService.getAllPriority();
				
		if(priority.isEmpty()){
            return new ResponseEntity<List<Priority>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Priority>>(priority, HttpStatus.OK);
		
	}
}

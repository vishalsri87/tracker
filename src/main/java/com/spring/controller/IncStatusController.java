package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.model.IncStatus;
import com.spring.service.IncStatusService;
@RestController
public class IncStatusController {
	@Autowired
	private IncStatusService statusService;
	
	@RequestMapping(value="status/jsonlist")
	public ResponseEntity<List<IncStatus>> listOfIncStatus() {
		
		List<IncStatus> status = statusService.getAllIncStatus();
		
		
		if(status.isEmpty()){
            return new ResponseEntity<List<IncStatus>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<IncStatus>>(status, HttpStatus.OK);
		
	}
}

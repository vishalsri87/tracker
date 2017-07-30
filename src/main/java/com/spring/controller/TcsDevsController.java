package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.model.Priority;
import com.spring.model.TcsDevs;
import com.spring.service.TcsDevsService;
@RestController
public class TcsDevsController {
	@Autowired
	private TcsDevsService tcsDevsService;
	
	@RequestMapping(value="tcsDevs/jsonlist")
	public ResponseEntity<List<TcsDevs>> listOftcsDevs() {
		
		List<TcsDevs> tcsDevs = tcsDevsService.getAllTcsDevs();
				
		if(tcsDevs.isEmpty()){
            return new ResponseEntity<List<TcsDevs>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<TcsDevs>>(tcsDevs, HttpStatus.OK);
		
	}
}

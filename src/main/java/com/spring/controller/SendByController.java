package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.model.Priority;
import com.spring.model.SendBy;
import com.spring.service.SendByService;
@RestController
public class SendByController {
	@Autowired
	private SendByService sendByservice;
	
	@RequestMapping(value="sendBy/jsonlist")
	public ResponseEntity<List<SendBy>> listOfSendBy() {
		
		List<SendBy> sendBy = sendByservice.getAllSendBy();
				
		if(sendBy.isEmpty()){
            return new ResponseEntity<List<SendBy>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<SendBy>>(sendBy, HttpStatus.OK);
		
	}
}

package com.hnzy.hot.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.hnzy.hot.service.KfgdService;


@Component 
public class GdTask{
	@Autowired
   private KfgdService kfgdService;
	
	@Scheduled(cron="0 */20 * * * ? ")   //每10秒执行一次      
     
    public void aTask(){      
        kfgdService.setyqgd();
       
    }      
	
	
	
}

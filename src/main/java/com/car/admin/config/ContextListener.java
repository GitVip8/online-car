package com.car.admin.config;

import com.car.admin.service.RegionCodeService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * @author sun, 2019/3/2
 * @version V1.0
 * @description: 系统context listener
 */

@WebListener
public class ContextListener implements ServletContextListener {

    @Autowired
    RegionCodeService regionCodeService;

    @Override
    public void contextInitialized(ServletContextEvent sce) {

        sce.getServletContext().setAttribute("name", "网约车系统");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }

    // private void initRegionCode(){
    //RegionCodeService.region = regionCodeService.findAll();
    //}
}
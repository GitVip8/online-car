package com.car.online.controller;

import com.car.admin.utils.R;
import com.car.online.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author sun, 2019/3/5
 * @version V1.0
 * @description: 公司相关
 */

@RestController
public class CompanyController {


    @Autowired
    CompanyService companyService;

    @RequestMapping("/car/company/list")
    public Object listCompany() {
        return R.success(companyService.find2Dic());
    }

}
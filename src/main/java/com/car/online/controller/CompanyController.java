package com.car.online.controller;

import com.car.admin.entity.PostParameter;
import com.car.admin.utils.R;
import com.car.online.Entity.BaseInfoCompanyEntity;
import com.car.online.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping(value = "/car/basic/service-info/list", method = RequestMethod.POST)
    public Object listService(@RequestBody PostParameter<BaseInfoCompanyEntity> postParameter) {
        return R.success(companyService.findAll(postParameter.getPage(), postParameter.getCondition()));
    }

    @RequestMapping(value = "/car/basic/service/{companyId}")
    public Object listService(@PathVariable String companyId) {
        return R.success(companyService.findDetail(companyId));
    }

    @RequestMapping(value = "/car/basic/service-pay/{companyId}", method = RequestMethod.POST)
    public Object findCompanyPay(@PathVariable String companyId, @RequestBody PostParameter postParameter) {
        return R.success(companyService.listPay(companyId, postParameter.getPage()));
    }

    @RequestMapping(value = "/car/basic/service-fare/{companyId}", method = RequestMethod.POST)
    public Object findCompanyFare(@PathVariable String companyId, @RequestBody PostParameter postParameter) {
        return R.success(companyService.listFare(companyId, postParameter.getPage()));
    }

}
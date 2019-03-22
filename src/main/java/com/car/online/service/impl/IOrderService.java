package com.car.online.service.impl;

import com.car.admin.utils.QueryUtil;
import com.car.online.Entity.OrderInfo;
import com.car.online.Entity.OrderMatchEntity;
import com.car.online.dao.*;
import com.car.online.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.persistence.EntityManager;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/**
 * @author sun, 2019/3/12
 * @version V1.0
 * @description:
 */
@Service
public class IOrderService implements OrderService {

    @Autowired
    OrderInfoDao orderInfoDao;

    @Autowired
    OrderCreateDao orderCreateDao;

    @Autowired
    OrderCancelDao orderCancelDao;

    @Autowired
    OrderMatchDao orderMatchDao;

    @Autowired
    OperateArriveDao operateArriveDao;

    @Autowired
    OperateDepartDao operateDepartDao;

    @Autowired
    OperatePayDao operatePayDao;

    @Autowired
    EntityManager entityManager;

    @Override
    public Page<OrderInfo> listOrder(Example<OrderInfo> example, Pageable pageable) {

        return orderInfoDao.findAll(example, pageable);
    }

    @Override
    public Page<OrderInfo> listOrder(LinkedHashMap<String, Object> params, Pageable pageable) {
        String companyName = (String) params.get("companyName");
        ArrayList<String> address = (ArrayList<String>) params.get("address");
        ArrayList<String> orderTime = (ArrayList<String>) params.get("orderTime");
        String vehicleNo = (String) params.get("vehicleNo");
        String licenseId = (String) params.get("licenseId");
        String driverPhone = (String) params.get("driverPhone");
        String sql = "select * from v_order_info where 1=1 ";
        List<Object> ps = new ArrayList<>();
        if (!StringUtils.isEmpty(companyName)) {
            sql += " and company_name = ? ";
            ps.add(companyName);
        }
        if (address != null) {
            sql += " and address = ? ";
            ps.add(address.get(1));
        }
        if (orderTime != null) {
            sql += " and order_time between ? and ? ";
            ps.add(orderTime.get(0));
            ps.add(orderTime.get(1));
        }
        if (!StringUtils.isEmpty(vehicleNo)) {
            sql += " and vehicle_no like ? ";
            ps.add('%' + vehicleNo + '%');
        }
        if (!StringUtils.isEmpty(licenseId)) {
            sql += " and license_id like ? ";
            ps.add('%' + licenseId + '%');
        }
        if (!StringUtils.isEmpty(driverPhone)) {
            sql += " and driver_phone like ?";
            ps.add('%' + driverPhone + '%');
        }
        return new QueryUtil<OrderInfo>(entityManager).findNativeSQL(sql, pageable, ps, OrderInfo.class);
    }

    @Override
    public OrderInfo findOrderDetail(String orderId) {
        OrderInfo orderInfo = orderInfoDao.findOrderInfoByOrderId(orderId);
        if (orderInfo != null) {
            orderInfo.setOrderCreate(orderCreateDao.findFirstByOrderId(orderId));
            OrderMatchEntity match = orderMatchDao.findFirstByOrderId(orderId);
            if (match != null) {
                orderInfo.setOrderMatch(match);
                orderInfo.setOperateDepart(operateDepartDao.findFirstByOrderId(orderId));
                orderInfo.setOperateArrive(operateArriveDao.findFirstByOrderId(orderId));
                orderInfo.setOperatePay(operatePayDao.findFirstByOrderId(orderId));
            }
            if (orderInfo.getOperatePay() == null)
                orderInfo.setOrderCancel(orderCancelDao.findFirstByOrderId(orderId));

        }

        return orderInfo;
    }
}
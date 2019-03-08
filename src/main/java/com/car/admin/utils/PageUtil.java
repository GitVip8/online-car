package com.car.admin.utils;


import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

/**
 * @author sun, 2019/3/6
 * @version V1.0
 * @description: 分页工具类
 */

public class PageUtil {

    public static Pageable create(int page, int size) {
        if (page != 0) page--;
        return PageRequest.of(page, size);
    }

}
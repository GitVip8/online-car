package com.car.admin.utils;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

/**
 * @author sun, 2019/3/22
 * @version V1.0
 * @description: 查询工具类
 */

public class QueryUtil<T> {

    private EntityManager entityManager;

    public QueryUtil(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public Page<T> findNativeSQL(String sql, Pageable pageable, List<Object> parameters, Class clazz) {
        Query query = this.entityManager.createNativeQuery(sql, clazz);
        if (parameters != null) {
            for (int i = 0; i < parameters.size(); i++) {
                query.setParameter(i + 1, parameters.get(i));
            }
        }
        List all = query.getResultList();
        query.setFirstResult(pageable.getPageNumber() * pageable.getPageSize());
        query.setMaxResults(pageable.getPageSize());
        List list = query.getResultList();
        return new PageImpl<>(list, pageable, all.size());
    }

}
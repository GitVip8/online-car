package com.car.admin.entity;

import org.springframework.security.core.GrantedAuthority;

/**
 * @author sun, 2019/3/2
 * @version V1.0
 * @description:
 */

public class IGrantedAuthority implements GrantedAuthority {

    private String authority;

    public IGrantedAuthority(String authority) {
        this.authority = authority;
    }

    @Override
    public String getAuthority() {
        return this.authority;
    }
}
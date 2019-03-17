package com.car.admin.oauth;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * @author sun, 2019/3/15
 * @version V1.0
 * @description: 用户授权service
 */

public class AuthUserService implements UserDetailsService {
    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        //User user = new User();
        return null;
    }
}
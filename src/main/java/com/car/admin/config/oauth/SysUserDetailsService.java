package com.car.admin.config.oauth;

import com.car.admin.entity.IGrantedAuthority;
import com.car.admin.entity.User;
import com.car.admin.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author sun, 2019/3/2
 * @version V1.0
 * @description: 登录验证service
 */


@Service
public class SysUserDetailsService implements UserDetailsService {

    private Logger logger = LoggerFactory.getLogger(SysUserDetailsService.class);

    /**
     * 用户service
     */
    final
    UserService sysUserService;

    @Autowired
    public SysUserDetailsService(UserService sysUserService) {
        this.sysUserService = sysUserService;
    }

    /**
     * 用户名验证
     *
     * @param s 用户名（账号）
     * @return org.springframework.security.core.userdetails.User 带有权限的用户
     * @throws UsernameNotFoundException 用户不存在异常
     */
    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = sysUserService.findUser(s);
        if (user == null) throw new UsernameNotFoundException("用户不存在");
        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new IGrantedAuthority("USER"));
        user.setGrantedAuthorities(authorities);
        return user;
    }
}
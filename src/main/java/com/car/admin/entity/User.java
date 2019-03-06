package com.car.admin.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.Email;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/**
 * @author sun, 2019/3/2
 * @version V1.0
 * @description: 用户
 */

@Entity
@Table(name = "sys_user")
@Data
@NoArgsConstructor
public class User implements UserDetails {

    /**
     * 主键ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 用户名（账号）
     */
    @Column(unique = true, nullable = false)
    private String username;

    /**
     * 姓名
     */
    @Column
    private String name;

    /**
     * 密码
     */
    @JsonIgnore
    @Column(nullable = false)
    private String password;

    /**
     * 邮件
     */
    @Email
    private String email;

    /**
     * 电话
     */

    private String mobile;

    /**
     * 状态
     */
    private Short status = 0;

    /**
     * 创建时间
     */
    private Date createTime = new Date();


    @Transient
    private boolean accountNonExpired;

    @Transient
    private boolean accountNonLocked;

    @Transient
    private boolean credentialsNonExpired;

    @Transient
    private boolean enabled;

    @Transient
    Collection<? extends GrantedAuthority> grantedAuthorities;

    public User(String username, String password, List<GrantedAuthority> grantedAuthorities) {
        this.username = username;
        this.password = password;
        this.grantedAuthorities = grantedAuthorities;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return this.grantedAuthorities;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
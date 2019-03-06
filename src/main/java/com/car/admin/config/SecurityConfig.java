package com.car.admin.config;

import com.car.admin.auth.AuthenticateProvider;
import com.car.admin.auth.SecurityProperties;
import com.car.admin.auth.SysUserDetailsService;

import com.car.admin.handler.AuthFailureHandler;
import com.car.admin.handler.AuthSuccessHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.core.GrantedAuthorityDefaults;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.session.InvalidSessionStrategy;
import org.springframework.security.web.session.SessionInformationExpiredStrategy;


/**
 * 核心配置文件
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true)//prePostEnabled使@PreAuthorize生效
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private SysUserDetailsService sysUserDetailsService;

    @Autowired
    private SecurityProperties securityProperties;

    @Autowired
    private SessionInformationExpiredStrategy sessionInformationExpiredStrategy;

    @Autowired
    private SessionRegistry sessionRegistry;

    @Autowired
    private InvalidSessionStrategy invalidSessionStrategy;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;


    @Autowired
    AuthFailureHandler authFailureHandler;

    @Autowired
    AuthSuccessHandler authSuccessHandler;

    @Autowired
    public void globalConfigure(AuthenticationManagerBuilder auth) {
        auth.authenticationProvider(authenticateProvider());
    }

    @Bean
    GrantedAuthorityDefaults grantedAuthorityDefaults() {
        return new GrantedAuthorityDefaults("");
    }

    @Bean
    public AuthenticateProvider authenticateProvider() {
        AuthenticateProvider provider = new AuthenticateProvider();
        provider.setUserDetailsService(sysUserDetailsService);
        provider.setPasswordEncoder(bCryptPasswordEncoder);
        return provider;
    }

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }


    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/public/**", "/", "/js/**", "/css/**", "/dist/**", "/images/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //权限控制
        http
                .authorizeRequests()
                .antMatchers("/admin/**").hasAnyRole("admin")
                .antMatchers("/private/**").hasRole("super_admin")
                //.antMatchers("/car/**").hasAnyRole("USER")
                .anyRequest().authenticated();

        //登录验证配置post验证
        http
                .formLogin().loginPage("/login")
                .permitAll()
                .successHandler(authSuccessHandler).failureHandler(authFailureHandler)
                .passwordParameter("username")
                .passwordParameter("password");
        // 安全退出用户
        http
                .logout().logoutUrl("/logout")
                .permitAll()
                .deleteCookies("JSESSIONID")
                .invalidateHttpSession(true)
                .logoutSuccessUrl("/login");

        //session管理
        http
                .sessionManagement()
                .invalidSessionStrategy(invalidSessionStrategy)//session失效策略处理
                .maximumSessions(1)//最大session并发数量1
                .maxSessionsPreventsLogin(securityProperties.getSession().isMaxSessionsPreventsLogin())//之后的登录踢掉之前的登录
                .expiredSessionStrategy(sessionInformationExpiredStrategy)//并发过期处理
                .sessionRegistry(sessionRegistry)
        ;
        //http缓存
        http
                .requestCache()
                .requestCache(new HttpSessionRequestCache());
        http
                .csrf().disable();
        http.httpBasic();
    }
}

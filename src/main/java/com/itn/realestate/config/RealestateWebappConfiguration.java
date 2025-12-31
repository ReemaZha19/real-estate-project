package com.itn.realestate.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;


@Configuration
@EnableWebSecurity
public class RealestateWebappConfiguration {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private DataSource dataSource;
	
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception{
		http
				.authorizeHttpRequests(auth -> auth
						.requestMatchers("/admin/**").hasRole("ADMIN")
						.requestMatchers("/user/**").authenticated() 
						.requestMatchers("/owner/**").hasRole("OWNER")
						.requestMatchers("/agent/**").hasRole("AGENT")
						.anyRequest().permitAll()
						
				)
				.formLogin(login -> login
//						.loginPage("/login")
//						.loginProcessingUrl("/login")
						.defaultSuccessUrl("/welcome",true)
						.failureUrl("/login?failed")
						.permitAll()
				)
				.logout(logout -> logout
						.logoutUrl("/logout")
						.invalidateHttpSession(true)
						.permitAll()
				);
		
		http.csrf().disable();
		
		return http.build();
				
				
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception{
		
		auth
		.jdbcAuthentication()
		.dataSource(dataSource)
		.passwordEncoder(passwordEncoder)
		.usersByUsernameQuery("select username, password, active from user_detail_tbl as ud where username=?")
		.authoritiesByUsernameQuery("select ud.username, ur.role from user_detail_tbl as ud, user_role_tbl as ur"
				+ " where ud.username=? and ud.user_id=ur.user_id");
		
		
		auth.inMemoryAuthentication().withUser("admin")
									.password("$2a$10$GTfPxiBVI3k3oCbGqLXMku.zPTOlqlx2du30vIgdplMhcC/MgYq.i")
									.roles("ADMIN");
	}
}

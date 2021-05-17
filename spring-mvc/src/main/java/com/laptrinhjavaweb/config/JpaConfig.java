package com.laptrinhjavaweb.config;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableJpaRepositories(basePackages = { "com.laptrinhjavaweb.repository" })
@EnableTransactionManagement
public class JpaConfig {

	@Bean(name = "entityManagerFactory")
	public LocalContainerEntityManagerFactoryBean entityManagerFactoryBean() {
		LocalContainerEntityManagerFactoryBean bean = new LocalContainerEntityManagerFactoryBean();
		bean.setDataSource(dataSource());
		bean.setPersistenceUnitName("persistence-data");
		JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
		bean.setJpaVendorAdapter(vendorAdapter);
		bean.setJpaProperties(additionalProperties());

		return bean;
	}

	@Bean
	JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {
		JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(entityManagerFactory);
		return transactionManager;
	}

	@Bean
	public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
		return new PersistenceExceptionTranslationPostProcessor();
	}

	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		dataSource.setUrl("jdbc:sqlserver://localhost:1433;databaseName=springmvc");
		dataSource.setUsername("sa");
		dataSource.setPassword("sapassword");
		return dataSource;
	}


	Properties additionalProperties() {
		Properties properties = new Properties();
		// properties.setProperty("hibernate.hbm2ddl.auto", "create-drop");
	//properties.setProperty("hibernate.hbm2ddl.auto", "create");
//	properties.setProperty("hibernate.hbm2ddl.auto", "none");
		properties.setProperty("hibernate.hbm2ddl.auto", "update");
		properties.setProperty("hibernate.enable_lazy_load_no_trans", "true");
		
		return properties;
	}

}

package com.ksj.config;

import javax.servlet.Filter;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

//Web.xml�� ����
public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return  new Class[]{RootConfig.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return  new Class[]{ServletConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[]{"/"};
	}
	
	@Override
	protected Filter[] getServletFilters() {
		CharacterEncodingFilter filter = new CharacterEncodingFilter(); 
		filter.setEncoding("utf-8");
		filter.setForceEncoding(true);
		return new Filter[] {filter};
	}
	
	@Override
	protected void customizeRegistration(Dynamic registration) {
		MultipartConfigElement multipartConfig 
			= new MultipartConfigElement("C:\\storage\\temp", 20971520, 41943040, 20971520);
		registration.setMultipartConfig(multipartConfig);
	}
	

}

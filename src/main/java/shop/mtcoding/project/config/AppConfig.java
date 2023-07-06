package shop.mtcoding.project.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import shop.mtcoding.project.config.interceptor.CustomInterceptor;

@Configuration
public class AppConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new CustomInterceptor())
        
         // 모든 URL에 대해 인터셉터를 수행하도록 설정합니다.
        .addPathPatterns("/**")

         // 인터셉터를 수행하지 않도록 설정합니다.
        .excludePathPatterns("/", "/user/join", "/user/emailCheck",
        "/user/login", "/user/login2", "/comp/join", "/comp/emailCheck",  
        "/comp/login", "/jobs/info", "/juso", "/jusoPopup", "/logout", "/jobs/search",
        "/help", "/jobs/info/search", "/jobs/info/list"  
        );
    }
}
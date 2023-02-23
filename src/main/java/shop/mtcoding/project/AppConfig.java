package shop.mtcoding.project;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import shop.mtcoding.project.interceptor.CustomInterceptor;

// 테스트

@Configuration
public class AppConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new CustomInterceptor())
                .addPathPatterns("/**") // 모든 URL에 대해 인터셉터를 수행하도록 설정합니다.
                .excludePathPatterns("/", "/user/join",
                        "/user/login", "/comp/join",
                        "/comp/login", "/jobs/**",
                        "/user/interest", "/help"); // 인터셉터를 수행하지 않도록 설정합니다.
    }
}
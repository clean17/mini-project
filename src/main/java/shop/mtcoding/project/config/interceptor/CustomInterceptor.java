package shop.mtcoding.project.config.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import shop.mtcoding.project.model.comp.Comp;
import shop.mtcoding.project.model.user.User;

public class CustomInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        String requestURI = request.getRequestURI();
        if (requestURI.startsWith("/user")) { 
            User principal = (User) request.getSession().getAttribute("principal");
            if (principal == null) {
                // System.out.println("테스트 : 세션이 없어");
                response.sendRedirect("/user/login");
                return false;
            }
        }
        if (requestURI.startsWith("/comp")) { 
            Comp compSession = (Comp) request.getSession().getAttribute("compSession");
            if (compSession == null) {
                response.sendRedirect("/comp/login");
                return false;
            }
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            @Nullable ModelAndView modelAndView) throws Exception {
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
            @Nullable Exception ex) throws Exception {
    }
}

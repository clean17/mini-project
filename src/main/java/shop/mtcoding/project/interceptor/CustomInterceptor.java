// package shop.mtcoding.project.interceptor;

// import javax.servlet.http.HttpServletRequest;
// import javax.servlet.http.HttpServletResponse;

// import org.springframework.lang.Nullable;
// import org.springframework.web.servlet.HandlerInterceptor;
// import org.springframework.web.servlet.ModelAndView;

// public class CustomInterceptor implements HandlerInterceptor {

// @Override
// public boolean preHandle(HttpServletRequest request, HttpServletResponse
// response, Object handler)
// throws Exception {
// String requestURI = request.getRequestURI();
// if (requestURI.startsWith("/user")) { // "/blocked"로 시작하는 요청을 차단
// response.sendRedirect("/user/login");
// return false;
// }
// if (requestURI.startsWith("/comp")) { // "/blocked"로 시작하는 요청을 차단
// response.sendRedirect("/comp/login");
// return false;
// }
// return true;

// // System.out.println("테스트 : "+ request.getRequestURL().toString());
// // if
// //
// (request.getRequestURL().toString().equals("http://localhost:8080/user/**"))
// // {
// // User principal = (User)
// request.getSession(false).getAttribute("principal");
// // if (principal == null) {
// // response.sendRedirect("/user/login");
// // return false;
// // // return true;
// // }
// // }
// // if
// //
// (request.getRequestURL().toString().equals("http://localhost:8080/comp/**"))
// // {
// // User principal = (User)
// request.getSession(false).getAttribute("principal");
// // if (principal == null) {
// // response.sendRedirect("/comp/login");
// // return false;
// // // return true;
// // }
// // }
// // return true;
// }

// @Override
// public void postHandle(HttpServletRequest request, HttpServletResponse
// response, Object handler,
// @Nullable ModelAndView modelAndView) throws Exception {
// }

// @Override
// public void afterCompletion(HttpServletRequest request, HttpServletResponse
// response, Object handler,
// @Nullable Exception ex) throws Exception {
// }
// }

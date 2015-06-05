package com.askj.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.askj.entity.User;

public class LoginFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		 // 不过滤的uri  
//        String[] notFilter = new String[] { "login.jsp"};  
  
        // 请求的uri  
        String uri = ((HttpServletRequest) request).getRequestURI();  
        String contextPath = ((HttpServletRequest) request).getContextPath(); 
      //得到访问地址  
        String url = uri.substring(contextPath.length());
        String resource="";
        if(url.length()>=9){
        	resource = url.substring(1,9);
        }
        System.out.println(resource);
        // uri中包含background时才进行过滤  
        System.out.println(url);
       
        if(url.equals("/user/main")){
            // 是否过滤  
        	  if(!(url.equals("/user/login"))){
        		  if(!(resource.equals("resource"))){
                // 执行过滤  
                // 从session中获取登录者实体  
        		  System.out.println("==============");
                User obj = (User) ((HttpServletRequest) request).getSession().getAttribute("loginUser");  
                if (null == obj) {  
                	System.out.println("*************************************");
                    // 如果session中不存在登录者实体，则弹出框提示重新登录  
                    // 设置request和response的字符集，防止乱码  
                    request.setCharacterEncoding("UTF-8");  
               //   response.setCharacterEncoding("UTF-8");
                    response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out = response.getWriter();  
                    String loginPage = "../login.jsp";  
                    StringBuilder builder = new StringBuilder();  
                    builder.append("<script charset=\'utf-8\' type=\"text/javascript\">");  
                    builder.append("alert('您长时间未操作，请重新登录！');");  
                    builder.append("window.top.location.href='");  
                    builder.append(loginPage);  
                    builder.append("';");  
                    builder.append("</script>");  
                    out.print(builder.toString());  
                } else {  
                    // 如果session中存在登录者实体，则继续  
                	chain.doFilter(request, response);  
                } 
                }else{
                  	chain.doFilter(request, response); 
                }
        	  }else{
              	chain.doFilter(request, response); 
              }
        }else{
        	chain.doFilter(request, response); 
        }
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		
		
	}

}

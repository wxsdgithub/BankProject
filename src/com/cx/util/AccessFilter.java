
  package com.cx.util;

  import java.io.IOException;
  import javax.servlet.Filter;
  import javax.servlet.FilterChain;
  import javax.servlet.FilterConfig;
  import javax.servlet.ServletException;
  import javax.servlet.ServletRequest;
  import javax.servlet.ServletResponse;
  import javax.servlet.http.HttpServletRequest;
  import javax.servlet.http.HttpServletResponse;
  import javax.servlet.http.HttpSession;

  /**
   * @author Administrator
   * 请求验证过滤器
   *用户没有登录的情况下就会转到登录页面
  */
  public class AccessFilter implements Filter {

    public void destroy() {
        
        
    }
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        
        HttpServletRequest request=(HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        //取得根目录所对应的绝对路径
        String currentURL=request.getRequestURI();
       // System.out.println("request.getRequestURI()="+request.getRequestURI()); 
        String targetURL=currentURL.substring(currentURL.indexOf("/",1));
        //System.out.println("targetURL="+targetURL); 
        //截取到当前文件名用于比较
        currentURL.length();
        HttpSession session=request.getSession();
        //判断当前页是否是登录页面，如果不是就做session的判断，防止出现未经过登录验证的非法访问
        if(!"/login".equals(targetURL) && !"/register".equals(targetURL)){
            if(session==null || session.getAttribute("user") == null){
               //用户登录以后手动添加session
                //System.out.println("request.getContextPath()="+request.getContextPath());
                //response.sendRedirect(request.getContextPath()+"/index.jsp");
            	request.getRequestDispatcher("login.jsp").forward(request, response);
               // 如果session为空表示用户没有登录就重定向到login.jsp页面
                return;
            }
        }
         //加入filter 继续向下执行
        filterChain.doFilter(request, response);
    }

     public void init(FilterConfig filterConfig) throws ServletException {
    }
  }

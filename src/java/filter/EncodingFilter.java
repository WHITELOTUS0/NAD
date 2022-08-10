package filter;

import java.io.IOException;
import java.sql.Connection;
import java.util.Collection;
import java.util.Map;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;

import conn.ConnectionUtils;
import utils.MyUtils;

@WebFilter(filterName = "encodingFilter", urlPatterns = { "/*" })
public class EncodingFilter implements Filter{
	
	public EncodingFilter() {
	  }

	  @Override
	  public void init(FilterConfig fConfig) throws ServletException {

	  }

	  @Override
	  public void destroy() {

	  }

	  @Override
	  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
	          throws IOException, ServletException {
	      request.setCharacterEncoding("UTF-8");

	      chain.doFilter(request, response);
	  }

}

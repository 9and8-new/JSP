package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class UTF8_ENncodingFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		
		req.setCharacterEncoding("UTF-8");
		System.out.println("[FILTRER] UTF-8 FILTER START..");
		chain.doFilter(req, resp);
		
		resp.setContentType("text/html; charser=UTF-8");
		System.out.println("[FILTRER] UTF-8 FILTER END..");
		
	}

}

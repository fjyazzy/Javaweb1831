package fjsdxy.zhengzy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class logfilter
 */
@WebFilter("/logfilter")
public class logfilter implements Filter {
	private FilterConfig config;
    /**
     * Default constructor. 
     */
    public logfilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		this.config = null;
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest req = (HttpServletRequest) request;
		String user = req.getParameter("user");
		if (user!= null &&!user.equalsIgnoreCase("admin")) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<html><head><title>");
			out.println("��ֹ����");
			out.println("</title></head><body>");
			out.println("�Բ���" + user + "����û���㹻��Ȩ��!");
			out.println("</body></html>");
			out.close();
		} else {
			
			ServletContext context = config.getServletContext();
			context.log("-------------��ʼ��������-------------");
			context.log("�ͻ��˵�ַ��" + req.getRemoteAddr());
			context.log("����URL��  " + req.getRequestURI());
			chain.doFilter(request, response);
			context.log("-------------�����������-------------");
		
		}
		
		chain.doFilter(request, response);
	}

	/**
	 * @param config 
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.config = fConfig;
	}

}

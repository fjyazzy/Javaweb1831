package fjsdxy.zhengzy;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class counter1
 */
@WebServlet("/counter1")
public class counter1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public counter1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		ServletContext context=getServletContext();		
		Integer count=(Integer) context.getAttribute("counter");
		if(count==null) {
			count=new Integer(1);
		} else {
			count=new Integer(count.intValue()+1);
		}
		context.setAttribute("counter", count);
        response.setContentType("text/html;charset=UTF-8");
PrintWriter out=response.getWriter();
out.println("<html><head><title>");
out.println("页面访问统计");
out.println("</title></head><body>");
out.println("该页面已经被访问了<b>"+count.intValue()+"</b>次!");
out.println("</body></html>");
out.close();

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}

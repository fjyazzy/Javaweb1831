package fjsdxy.zhengzy;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logins
 */
@WebServlet("/logins")
public class logins extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logins() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("UTF-8");
		String user=request.getParameter("user");
		String psw=request.getParameter("psw");		
		
		HttpSession session=request.getSession();
		session.setAttribute("user", user);		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<html><head><title>");
		out.println("Session����ҳ��");
		out.println("</title></head><body>");
		out.println("�Ự״̬��");		//�Ƿ����µĻỰ
		if(session.isNew())
			out.println("�µĻỰ<br>");
		else
			out.println("�ɵĻỰ<br>");
		    out.println("�ỰID��"+session.getId()+"<br>");		//�ỰID
	        out.println("����ʱ�䣺"+new Date(session.getCreationTime())+"<br><br>");	
            String username=(String) session.getAttribute("user");
            if(user.equals("zzy")&&psw.equals("123")) {
                        			out.println("��ӭ����"+username+"!<br><br>");
                        			out.println("<a href=buy>ȥ����</a>");
                        			out.println("<a href=logout>ע��</a>");
            } else {
                        			out.println("<form method=get action=logins>");
                        			out.println("<table>");
                        			out.println("<tr><td>�û�����</td><td><input type=text name=user></td></tr>");
                           			out.println("<tr><td>���룺</td><td><input type=password name=psw></td></tr>");
                                   
                        			out.println("<tr><td><input type=reset value=����></td>");
                        			out.println("<td><input type=submit value=��½></td></tr></table>");
                        			out.println("</form>");
            }		
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

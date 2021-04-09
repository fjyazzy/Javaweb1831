package fjsdxy.zhengzy;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class count2
 *
 */
@WebListener
public class count2 implements HttpSessionListener {
	public static int count = 0;	//���浱ǰ��������
    /**
     * Default constructor. 
     */
    public count2() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    	
		count++;
		ServletContext context = se.getSession().getServletContext();
		context.setAttribute("count", count);
		context.log("��ǰ����������" + count + "��");

    }
    

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    	count--;
		ServletContext context = se.getSession().getServletContext();
		context.setAttribute("count", count);
		context.log("��ǰ����������" + count + "��");

    	
    }
	
}

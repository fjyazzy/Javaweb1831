package fjsdxy.zhengzy;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class listen
 *
 */
@WebListener
public class listen implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public listen() {
        // TODO Auto-generated constructor stub
    	
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
		ServletContext sc = sce.getServletContext();
		sc.log("[INFO]Web应用程序正在关闭！");

    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
		ServletContext sc = sce.getServletContext();
		sc.log("[INFO]Web应用程序正在启动！");

    }
	
}

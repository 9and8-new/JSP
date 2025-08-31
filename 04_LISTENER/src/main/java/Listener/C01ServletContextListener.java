package Listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class C01ServletContextListener implements ServletContextListener{

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//---- 초기값
		System.out.println("[LISTENER] C01ServletContextListener..start...");
	}
	
	//종료할때 제거해야할것 제거
	@Override
	public void contextDestroyed(ServletContextEvent sce) {

		System.out.println("[LISTENER] C01ServletContextListener..end...");
	}



	
	
}

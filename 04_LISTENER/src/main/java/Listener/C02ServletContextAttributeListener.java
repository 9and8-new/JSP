package Listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

@WebListener //속성값 추가 변경 삭제시 동작하는 리스너
public class C02ServletContextAttributeListener implements ServletContextAttributeListener{

	@Override
	public void attributeAdded(ServletContextAttributeEvent scae) {
		System.out.println("[LISTENER] C02ServletContextAttributeListener add()..");
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent scae) {
		System.out.println("[LISTENER] C02ServletContextAttributeListener remove()..");
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent scae) {
		System.out.println("[LISTENER] C02ServletContextAttributeListener replace()..");
	}
		

}
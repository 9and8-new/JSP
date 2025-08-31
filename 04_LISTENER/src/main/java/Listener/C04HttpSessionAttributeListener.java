package Listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

@WebListener
public class C04HttpSessionAttributeListener implements HttpSessionAttributeListener{
	// 속성이 만들어졌을때, 제거됬을때,변경됬을때
	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {

	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
	
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
	
	}
	
}

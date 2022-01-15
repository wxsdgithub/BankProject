package com.cx.util;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {

	private HttpSession session ;
	private ServletContext application = null ;
	public void contextInitialized(ServletContextEvent sce)  { 
	}
	
	public void contextDestroyed(ServletContextEvent sce)  { 
    }
    public void sessionCreated(HttpSessionEvent se)  { 
    	this.session = se.getSession() ;
    }
    public void sessionDestroyed(HttpSessionEvent se)  { 
    }

    public void attributeAdded(HttpSessionBindingEvent se)  { 
    	if(se.getValue()==null) {
    		throw new RuntimeException("属性更改");
    	}
    }

    /**
     * 	��session������ɾ�����м���
     * @param se
     */
    public void attributeRemoved(HttpSessionBindingEvent se)  { 
//    	System.out.println("** Session ɾ������:"+se.getName()+" --> "+se.getValue()) ;
    }
    
    /**
     * 	��session�������滻���м���
     * @param se
     */
    public void attributeReplaced(HttpSessionBindingEvent se)  { 
//    	System.out.println("** Session �滻����:"+se.getName()+" --> "+se.getValue()) ;
    }

  
	
}

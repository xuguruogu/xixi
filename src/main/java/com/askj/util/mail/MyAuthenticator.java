package com.askj.util.mail;
/**   
 *  
 */ 
import javax.mail.*;   

public class MyAuthenticator extends Authenticator{   
    String userName=null;   
    String password=null;   
        
    public MyAuthenticator(){   
    }   
    public MyAuthenticator(String username, String password) {    
        this.userName = username;    
        this.password = password;    
    }    
    public PasswordAuthentication getPasswordAuthentication(){   
    	System.out.println("username:"+userName+",password:"+password);
        return new PasswordAuthentication(userName, password);   
    }   
}   

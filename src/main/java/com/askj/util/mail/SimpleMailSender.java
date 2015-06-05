package com.askj.util.mail;
/**   
 * 简单邮件（不带附件的邮件）发送器   
 */ 
import java.util.Date;    
import java.util.Properties;   

import javax.mail.Address;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;


public class SimpleMailSender {    
/**   
  * 以文本格式发送邮件   
  * @param mailInfo 待发送的邮件的信息   
  */    
    public boolean sendTextMail(MailSenderInfo mailInfo) throws Exception{    
      // 判断是否需要身份认证    
      MyAuthenticator authenticator = null;    
      Properties pro = mailInfo.getProperties();   
      if (mailInfo.isValidate()) {    
      // 如果需要身份认证，则创建一个密码验证器    
    	  System.out.println("userName>>>>>>>>>>"+mailInfo.getUserName()+",password>>>>>"+ mailInfo.getPassword());
        authenticator = new MyAuthenticator(mailInfo.getUserName(), mailInfo.getPassword());    
      }   
      // 根据邮件会话属性和密码验证器构造一个发送邮件的session    
      Session sendMailSession = Session.getDefaultInstance(pro,authenticator); 
      System.out.println("构造一个发送邮件的session");
      
      // 根据session创建一个邮件消息    
      Message mailMessage = new MimeMessage(sendMailSession);    
      // 创建邮件发送者地址    
      Address from = new InternetAddress(mailInfo.getFromAddress());    
      // 设置邮件消息的发送者    
      mailMessage.setFrom(from);    
      // 创建邮件的接收者地址，并设置到邮件消息中    
      Address to = new InternetAddress(mailInfo.getToAddress());    
      mailMessage.setRecipient(Message.RecipientType.TO,to);    
      // 设置邮件消息的主题    
      System.out.println(">>>>>"+mailInfo.getSubject());
      mailMessage.setSubject(mailInfo.getSubject());    
      // 设置邮件消息发送的时间    
      mailMessage.setSentDate(new Date());    
      // 设置邮件消息的主要内容    
      String mailContent = mailInfo.getContent();    
      mailMessage.setText(mailContent);    
      // 发送邮件    
      Transport.send(mailMessage);
      System.out.println("发送成功！");
      return true;    
    }    
       
    /**   
      * 以HTML格式发送邮件   
      * @param mailInfo 待发送的邮件信息   
      */    
    public  boolean sendHtmlMail(MailSenderInfo mailInfo) throws Exception{    
      // 判断是否需要身份认证    
      MyAuthenticator authenticator = null;   
      Properties pro = mailInfo.getProperties();   
      //如果需要身份认证，则创建一个密码验证器     
      if (mailInfo.isValidate()) {  
    	  System.out.println("userName>>>>>>>"+mailInfo.getUserName());
        authenticator = new MyAuthenticator(mailInfo.getUserName(), mailInfo.getPassword());   
      }    
      // 根据邮件会话属性和密码验证器构造一个发送邮件的session    
      Session sendMailSession = Session.getDefaultInstance(pro,authenticator);    
        
      // 根据session创建一个邮件消息    
      Message mailMessage = new MimeMessage(sendMailSession);    
      // 创建邮件发送者地址    
      Address from = new InternetAddress(mailInfo.getFromAddress());    
      // 设置邮件消息的发送者    
      mailMessage.setFrom(from);    
      // 创建邮件的接收者地址，并设置到邮件消息中    
      Address to = new InternetAddress(mailInfo.getToAddress());    
      // Message.RecipientType.TO属性表示接收者的类型为TO    
      mailMessage.setRecipient(Message.RecipientType.TO,to);    
      // 设置邮件消息的主题    
      mailMessage.setSubject(mailInfo.getSubject());    
      // 设置邮件消息发送的时间    
      mailMessage.setSentDate(new Date());    
      // MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象    
      Multipart mainPart = new MimeMultipart();    
      // 创建一个包含HTML内容的MimeBodyPart    
      BodyPart html = new MimeBodyPart();    
      // 设置HTML内容    
      html.setContent(mailInfo.getContent(), "text/html; charset=utf-8");    
      mainPart.addBodyPart(html);    
      // 将MiniMultipart对象设置为邮件内容    
      mailMessage.setContent(mainPart);    
      // 发送邮件    
      Transport.send(mailMessage);    
      System.out.println(">>>>>>>发送成功");
      return true;    
    }    
 
    /*
     * @title:标题
     * @content:内容
     * @type:类型,1:文本格式;2:html格式
     * @tomail:接收的邮箱
     */
    public boolean sendMail(String title,String content,String type,String tomail) throws Exception{   
        
    	//这个类主要是设置邮件   
	     MailSenderInfo mailInfo = new MailSenderInfo();    
	     mailInfo.setMailServerHost("smtp.qq.com");    
	     mailInfo.setMailServerPort("25");    
	     mailInfo.setValidate(true);    
	     mailInfo.setUserName("598134644");    
	     mailInfo.setPassword("zzl2852857");//您的邮箱密码    
	     mailInfo.setFromAddress("598134644@qq.com");    
	     mailInfo.setToAddress(tomail);    
	     mailInfo.setSubject(title);    
	     mailInfo.setContent(content);    
	     //这个类主要来发送邮件   
	  
	     SimpleMailSender sms = new SimpleMailSender();   
	     
	     if("1".equals(type)){
	    	 return sms.sendTextMail(mailInfo);//发送文体格式    
	     }else if("2".equals(type)){
	    	 return sms.sendHtmlMail(mailInfo);//发送html格式   
	     }
	     return false;
	   }
    /**
     * @param SMTP  	邮件服务器
     * @param PORT		端口
     * @param EMAIL		本邮箱账号
     * @param PAW		本邮箱密码
     * @param toEMAIL	对方箱账号
     * @param TITLE		标题
     * @param CONTENT	内容
     * @param TYPE		1：文本格式;2：HTML格式
     */
    public static void sendEmail(String toEMAIL, String nickname, String password) throws Exception{ 
    	String SMTP = "smtp.sina.cn";
    	String PORT = "25";
    	String EMAIL = "18868235100m0@sina.cn";
    	String PAW = "xbc2852857";
    	String TITLE = "[犀犀论坛]密码找回服务";
    	String CONTENT = "<h3>亲爱的用户 "+nickname+"（"+toEMAIL+"）：您好！</h3> " +
					"您收到这封这封电子邮件是因为您申请找回[犀犀论坛]登录密码。</br>" +
					"假如这不是您本人的操作, 请不用理会这封电子邮件, 但是如果您持续收到这类的信件骚扰, 请您尽快联络管理员。<br>" +
					"您的登录密码为：<span style=\"font-size: 20px\">"+password+"</span></br>" +
					"请妥善保管您的登录密码，牢记后删除该邮件</br></br>" +
					"请勿回复邮件，谢谢您对我们的支持";
    	String TYPE = "2";
    	
        //这个类主要是设置邮件   
	     MailSenderInfo mailInfo = new MailSenderInfo();
	     
	     mailInfo.setMailServerHost(SMTP);    
	     mailInfo.setMailServerPort(PORT);    
	     mailInfo.setValidate(true);    
	     mailInfo.setUserName(EMAIL);    
	     mailInfo.setPassword(PAW);   
	     mailInfo.setFromAddress(EMAIL);    
	     mailInfo.setToAddress(toEMAIL);    
	     mailInfo.setSubject(TITLE);    
	     mailInfo.setContent(CONTENT);    
	     //这个类主要来发送邮件   
	  
	     SimpleMailSender sms = new SimpleMailSender();
	     
	    if("1".equals(TYPE)){
	    	System.out.println(">>>>>发送TextMail");
	    	sms.sendTextMail(mailInfo);
	    }else{
	    	System.out.println(">>>>>发送HtmlMail");
	    	sms.sendHtmlMail(mailInfo);
	    }
	     
	   }
    
    
    public static void main(String[] args){   
        //这个类主要是设置邮件   
	    /* MailSenderInfo mailInfo = new MailSenderInfo();    
	     mailInfo.setMailServerHost("smtp.qq.com");    
	     mailInfo.setMailServerPort("25");    
	     mailInfo.setValidate(true);    
	     mailInfo.setUserName("itfather@1b23.com");    
	     mailInfo.setPassword("tttt");//您的邮箱密码    
	     mailInfo.setFromAddress("itfather@1b23.com");    
	     mailInfo.setToAddress("313596790@qq.com");    
	     mailInfo.setSubject("设置邮箱标题");    
	     mailInfo.setContent("设置邮箱内容");    
	     //这个类主要来发送邮件   
	  
	     SimpleMailSender sms = new SimpleMailSender();   */
	     //sms.sendTextMail(mailInfo);//发送文体格式    
	     //sms.sendHtmlMail(mailInfo);//发送html格式   
	   /* try {
			new SimpleMailSender().sendMail("呵呵", "测试", "1", "1320934930@qq.com");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("报错");
		}*/
    	/*try {//<h4>您好,以下是您的犀犀帐号登录密码，请妥善保管您的密码</h4><p>您的密码为：  xbc2852857</br>请牢记，谢谢使用犀犀论坛app</p>
			sendEmail("smtp.sina.cn", "25", "18868235100m0@sina.cn", "xbc2852857", "598134644@qq.com", "[犀犀论坛]密码找回服务", 
					"<h3>亲爱的用户 张志利（278836060@qq.com）：您好！</h3> " +
					"您收到这封这封电子邮件是因为您申请找回[犀犀论坛]登录密码。</br>" +
					"假如这不是您本人的操作, 请不用理会这封电子邮件, 但是如果您持续收到这类的信件骚扰, 请您尽快联络管理员。<br>" +
					"您的登录密码为：<span style=\"font-size: 20px\">zzl2852857</span></br>" +
					"请妥善保管您的登录密码，记住后删除该邮件，谢谢您的使用", "2");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	   }
    
}   

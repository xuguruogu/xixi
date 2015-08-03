package com.xuguruogu.lingxi.entity;

import java.text.SimpleDateFormat;

/**
 * 消息MyMessage
 * @author Xanxus
 *
 */
public class MM {
	private int id;
	private Customer receiver;		//接收者
	private Customer sender;		//发送者
	private String content;			//消息
	private String sendTime;		//发送时间
	private int isRead;				//是否已查看（0代表未查看，1代表已查看）
	//消息所带参数
	private int postID;				
	private int xqzID;
	private int pmID;
	//消息类型
	private int type;		//0代表post消息，1代表xqz消息，2代表私信消息
	
	
	public int getPostID() {
		return postID;
	}
	public void setPostID(int postID) {
		this.postID = postID;
	}
	
	
	public int getXqzID() {
		return xqzID;
	}
	public void setXqzID(int xqzID) {
		this.xqzID = xqzID;
	}
	public int getPmID() {
		return pmID;
	}
	public void setPmID(int pmID) {
		this.pmID = pmID;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getIsRead() {
		return isRead;
	}
	public void setIsRead(int isRead) {
		this.isRead = isRead;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Customer getReceiver() {
		return receiver;
	}
	public void setReceiver(Customer receiver) {
		this.receiver = receiver;
	}
	public Customer getSender() {
		return sender;
	}
	public void setSender(Customer sender) {
		this.sender = sender;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSendTime() {
		return sendTime;
	}
	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
	public MM() {
		sendTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(System.currentTimeMillis());
		isRead = 0;
	}
	public MM(Customer receiver, Customer sender, String content,
			String sendTime, int isRead, int type) {
		super();
		this.receiver = receiver;
		this.sender = sender;
		this.content = content;
		this.sendTime = sendTime;
		this.isRead = isRead;
		this.type = type;
	}
	
}

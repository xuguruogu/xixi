package com.askj.entity;

import java.util.List;

/**
 * 私信Private Message
 * @author Xanxus
 *
 */
public class PM {
	private int id;
	private Customer sender;		//发送者
	private Customer receiver;		//接收者
	private String content;			//私信内容
	private String lastUpTime;		//最后更新时间
	private List<PMReplies> replies;	//私信中的回复列表
	
	public List<PMReplies> getReplies() {
		return replies;
	}
	public void setReplies(List<PMReplies> replies) {
		this.replies = replies;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Customer getSender() {
		return sender;
	}
	public void setSender(Customer sender) {
		this.sender = sender;
	}
	public Customer getReceiver() {
		return receiver;
	}
	public void setReceiver(Customer receiver) {
		this.receiver = receiver;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLastUpTime() {
		return lastUpTime;
	}
	public void setLastUpTime(String lastUpTime) {
		this.lastUpTime = lastUpTime;
	}
	public PM() {
		super();
	}
	public PM(Customer sender, Customer receiver, String content,
			String lastUpTime) {
		super();
		this.sender = sender;
		this.receiver = receiver;
		this.content = content;
		this.lastUpTime = lastUpTime;
	}
}

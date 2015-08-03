package com.xuguruogu.lingxi.entity;

/**
 * 小圈子回复
 * @author Xanxus
 *
 */
public class XQZReplies {
	private int id;
	private int xqzID;					//对应小圈子id
	private Customer parentReplier;		//上级回复人
	private Customer replier;			//回复人
	private String content;				//回复内容
//	private String repliesTime;			//回复时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getXqzID() {
		return xqzID;
	}
	public void setXqzID(int xqzID) {
		this.xqzID = xqzID;
	}
	public Customer getParentReplier() {
		return parentReplier;
	}
	public void setParentReplier(Customer parentReplier) {
		this.parentReplier = parentReplier;
	}
	public Customer getReplier() {
		return replier;
	}
	public void setReplier(Customer replier) {
		this.replier = replier;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	/*public String getRepliesTime() {
		return repliesTime;
	}
	public void setRepliesTime(String repliesTime) {
		this.repliesTime = repliesTime;
	}*/
	
	public XQZReplies(int xqzID, Customer parentReplier, Customer replier,
			String content) {
		super();
		this.xqzID = xqzID;
		this.parentReplier = parentReplier;
		this.replier = replier;
		this.content = content;
	}
	public XQZReplies() {
		super();
	}
}

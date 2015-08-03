package com.xuguruogu.lingxi.entity;

/**
 * 私信中的回复
 * @author Administrator
 *
 */
public class PMReplies {
	private int id;
	private int pmID;		//私信的id
	private Customer parentReplier;		//被回复人
	private Customer replier;			//回复人
	private String content;				//回复内容;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPmID() {
		return pmID;
	}
	public void setPmID(int pmID) {
		this.pmID = pmID;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public PMReplies() {
		super();
	}
	public PMReplies(int pmID, Customer parentReplier, Customer replier,
			String content) {
		super();
		this.pmID = pmID;
		this.parentReplier = parentReplier;
		this.replier = replier;
		this.content = content;
	}
	
}

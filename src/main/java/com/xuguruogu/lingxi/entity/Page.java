package com.xuguruogu.lingxi.entity;

/**
 * 分页
 * @author Xanxus
 *
 */
public class Page {
	private int pageIndex;				//页码
	private int pageSize;				//页容量
	private int startIndex;				//查询起始下标
	private String searchText;			//查询内容
	private int postID;					//帖子id、
	private int customerID;				//用户id
	
	
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public int getPostID() {
		return postID;
	}
	public void setPostID(int postID) {
		this.postID = postID;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public String getSearchText() {
		return searchText;
	}
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	
	public Page() {
		pageIndex = 0;
		pageSize = 10;
		searchText = "";
	}
	@Override
	public String toString() {
		return "Page [pageIndex=" + pageIndex + ", pageSize=" + pageSize
				+ ", searchText=" + searchText + ", startIndex=" + startIndex
				+ "]";
	}
	
}

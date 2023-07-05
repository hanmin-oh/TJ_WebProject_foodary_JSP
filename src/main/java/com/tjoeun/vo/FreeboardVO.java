package com.tjoeun.vo;

import java.util.Date;

//	메인글 1건을 기억하는 클래스
public class FreeboardVO {

	private int idx;
	private String subject; // 메인글 제목
	private String content; // 메인글 내용
	private Date writeDate;
	private int hit; // 조회수
	private String name;
	private String notice = ""; // 공지글 여부(on => 공지글, "" => 일반글)
	private String picture = "";
	private int commentCount; // 댓글의 개수
	private String id;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "FreeboardVO [idx=" + idx + ", subject=" + subject + ", content=" + content + ", writeDate=" + writeDate
				+ ", hit=" + hit + ", name=" + name + ", notice=" + notice + ", picture=" + picture + ", commentCount="
				+ commentCount + ", id=" + id + "]";
	}
	
	
	
}

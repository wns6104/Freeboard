package service;

public class Board {
	private int boardNo;
	private String boardPw;
	private String boardContent;
	private String boardUser;
	private String boardSubject;
	private String boardReg;
	private int boardHit;
	private int boardImgsize;
	private String boardfileName;
	private String boardmodifDate;
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardPw() {
		return boardPw;
	}
	public void setBoardPw(String boardPw) {
		this.boardPw = boardPw;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardUser() {
		return boardUser;
	}
	public void setBoardUser(String boardUser) {
		this.boardUser = boardUser;
	}
	public String getBoardSubject() {
		return boardSubject;
	}
	public void setBoardSubject(String boardSubject) {
		this.boardSubject = boardSubject;
	}
	public String getBoardReg() {
		return boardReg;
	}
	public void setBoardReg(String boardReg) {
		this.boardReg = boardReg;
	}
	public int getBoardHit() {
		return boardHit;
	}
	public void setBoardHit(int boardHit) {
		this.boardHit = boardHit;
	}
	public int getBoardImgsize() {
		return boardImgsize;
	}
	public void setBoardImg(int boardImgsize) {
		this.boardImgsize = boardImgsize;
	}
	public String getBoardfileName() {
		return boardfileName;
	}
	public void setBoardfileName(String boardfileName) {
		this.boardfileName = boardfileName;
	}
	public String getBoardmodifDate() {
		return boardmodifDate;
	}
	public void setBoardmodifDate(String boardmodifDate) {
		this.boardmodifDate = boardmodifDate;
	}
}

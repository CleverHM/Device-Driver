package kr.co.smart_bicycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.smart_bicycle.dm.DBManager;
import kr.co.smart_bicycle.vo.MemberVO;

public class MemberDAO {
	private MemberDAO() {
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public void insertMember(MemberVO mVo) {
		String sql = "insert into member(id, pw, age, sex, register_day) values(?, ?, ?, ?, now())";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getId());
			pstmt.setString(2, mVo.getPw());
			pstmt.setInt(3, mVo.getAge());
			pstmt.setString(4, mVo.getSex());
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, null);
		}
	}
	
	public void updateMember(MemberVO mVo) {
		String sql = "update member set pw = ?, age = ?, sex = ? where id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getPw());
			pstmt.setInt(2, mVo.getAge());
			pstmt.setString(3, mVo.getSex());
			pstmt.setString(4, mVo.getId());
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, null);
		}
	}
	
	public void deleteMember(MemberVO mVo) {
		String sql = "delete member where id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getId());
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, null);
		}
	}
	
	public MemberVO checkPassWord(String id, String pw) {
		String sql = "select * from member where id = ? and pw = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVO mVo = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVo.getId());
			pstmt.setString(2, mVo.getPw());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mVo = new MemberVO();
				
				mVo.setId(id);
				mVo.setPw(pw);
				mVo.setAge(rs.getInt("age"));
				mVo.setSex(rs.getString("sex"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mVo;
	}
}


























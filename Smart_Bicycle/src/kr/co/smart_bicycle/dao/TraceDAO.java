package kr.co.smart_bicycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import kr.co.smart_bicycle.dm.DBManager;
import kr.co.smart_bicycle.vo.TraceVO;

public class TraceDAO {
	private TraceDAO() {
	}
	
	private static TraceDAO instance = new TraceDAO();
	
	public static TraceDAO getInstance() {
		return instance;
	}

	public List<TraceVO> selectAllTraces() {
		String sql = "select * from trace order by day_time desc";
		
		List<TraceVO> list = new ArrayList<TraceVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				TraceVO tVo = new TraceVO();
				
				tVo.setDay_time(rs.getString("day_time"));
				tVo.setLatitude(rs.getDouble("latitude"));
				tVo.setLongtitude(rs.getDouble("longitude"));
				tVo.setId(rs.getString("id"));
				
				list.add(tVo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	public void insertTrace(TraceVO tVo) {
		String sql = "insert into trace(day_time, latitude, longitude, id) values(?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, tVo.getDay_time());
			pstmt.setDouble(2, tVo.getLatitude());
			pstmt.setDouble(3, tVo.getLongtitude());
			pstmt.setString(4, tVo.getId());
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, null);
		}
	}
	
	public TraceVO latestTrace() {
		String sql = "select * from trace order by day_time desc";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		TraceVO tVo = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
					
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				tVo = new TraceVO();
				
				tVo.setDay_time(rs.getString("day_time"));
				tVo.setLatitude(rs.getDouble("latitude"));
				tVo.setLongtitude(rs.getDouble("longitude"));
				tVo.setId(rs.getString("id"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		return tVo;
	}
}


























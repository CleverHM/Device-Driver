package kr.co.smart_bicycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import kr.co.smart_bicycle.dm.DBManager;
import kr.co.smart_bicycle.vo.ActivityVO;

public class ActivityDAO {
	private ActivityDAO() {
	}
	
	private static ActivityDAO instance = new ActivityDAO();
	
	public static ActivityDAO getInstance() {
		return instance;
	}
	
	public List<ActivityVO> selectAllTraces() {
		String sql = "select * from activity order by day desc";
		
		List<ActivityVO> list = new ArrayList<ActivityVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ActivityVO aVo = new ActivityVO();
				
				aVo.setDay(rs.getString("day"));
				aVo.setId(rs.getString("id"));
				aVo.setTemp(rs.getDouble("temperature"));
				aVo.setHumi(rs.getDouble("humidity"));
				aVo.setCalory(rs.getInt("calory"));
				aVo.setDistanse(rs.getInt("distance"));
				aVo.setGps_path(rs.getString("gps_path"));
				
				list.add(aVo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	public void insertActivity(ActivityVO aVo) {
		String sql = "insert into activity(day, id, temperature, humidity, calory, distance, gps_path) values(?, ?, ?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, aVo.getDay());
			pstmt.setString(2, aVo.getId());
			pstmt.setDouble(3, aVo.getTemp());
			pstmt.setDouble(4, aVo.getHumi());
			pstmt.setInt(5, aVo.getCalory());
			pstmt.setInt(6, aVo.getDistanse());
			pstmt.setString(7, aVo.getGps_path());
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, null);
		}
	}
}


























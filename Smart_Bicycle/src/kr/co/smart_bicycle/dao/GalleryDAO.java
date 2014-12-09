package kr.co.smart_bicycle.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import kr.co.smart_bicycle.dm.DBManager;
import kr.co.smart_bicycle.vo.GalleryVO;

public class GalleryDAO {
	private GalleryDAO() {
	}
	
	private static GalleryDAO instance = new GalleryDAO();
	
	public static GalleryDAO getInstance() {
		return instance;
	}
	
	public List<GalleryVO> selectAllTraces() {
		String sql = "select * from gallery order by gallery_path desc";
		
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				GalleryVO gVo = new GalleryVO();
				
				gVo.setGallery_path(rs.getString("gallery_path"));
				gVo.setId(rs.getString("id"));
				
				list.add(gVo);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, stmt, rs);
		}
		return list;
	}
	
	public void insertGallery(GalleryVO gVo) {
		String sql = "insert into gallery(gallery_path, id) values(?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, gVo.getGallery_path());
			pstmt.setString(2, gVo.getId());
			
			pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, null);
		}
	}
}


























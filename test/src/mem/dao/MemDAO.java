package mem.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import mem.bean.MemDTO;

public class MemDAO {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	
	public MemDAO() {
		try {
			Context context=new InitialContext();
			ds=(DataSource)context.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int write(MemDTO memDTO) {
		int su=0;
		String sql="insert into member2 values (?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, memDTO.getName());
			pstmt.setString(2, memDTO.getId());
			pstmt.setString(3, memDTO.getPwd());
			pstmt.setString(4, memDTO.getGender());
			pstmt.setString(5, memDTO.getBirth1());
			pstmt.setString(6, memDTO.getBirth2());
			pstmt.setString(7, memDTO.getBirth3());
			pstmt.setString(8, memDTO.getEmail1());
			pstmt.setString(9, memDTO.getEmail2());
			pstmt.setString(10, memDTO.getTel1());
			pstmt.setString(11, memDTO.getTel2());
			pstmt.setString(12, memDTO.getTel3());
			su=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return su;
	}
	public String login(String id, String pwd) {
		String sql = "select * from member where id=? and pwd=?";
		String name = null;
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				name = rs.getString("name");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return name;
	}
	
	public boolean isExistId(String id) {
		boolean exist = false;	
		String sql = "select * from member where id=?";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				exist = true;	// id 존재함 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return exist;
	}
	
}























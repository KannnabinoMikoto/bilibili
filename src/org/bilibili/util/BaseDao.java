package org.bilibili.util;

import java.sql.*;


public class BaseDao {
	private static final String Driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private final String url="jdbc:sqlserver://localhost:1433;DataBaseName=B_WEB";
	private final String uid="sa";
	private final String pwd="sa";
	static{
		try {
			Class.forName(Driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection(){
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, uid, pwd);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	/**
	 * 
	 * 关闭连接
	 * @param conn
	 * @param stmt
	 * @param rs
	 */
	public void closeAll(Connection conn,Statement stmt,ResultSet rs){
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(stmt != null){
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public boolean executeUpdate(String sql,Object[] params){
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		int row = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			if(params != null){
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i+1, params[i]);
				}
			}
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			closeAll(conn, pstmt, null);
		}
		return row > 0;
	}
	
	public ResultSet executeQuery(String sql,Object[] params){
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			if(params != null){
				for (int i = 0; i < params.length; i++) {
					pstmt.setObject(i+1, params[i]);
				}
			}
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
}

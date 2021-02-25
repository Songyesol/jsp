package emp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import emp.serv.JdbcUtil;

public class DeptDAO {

	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	private static DeptDAO instance;
	public static DeptDAO getInstance() {
		if(instance == null) {
			instance = new DeptDAO();
		}
		return instance;
	}
	
	public ArrayList<DeptVO> selectAll(){
		ArrayList<DeptVO> list = new ArrayList<DeptVO>();
		DeptVO vo = null;
		String sql = "SELECT DEPARTMENT_ID, "
						+ "DEPARTMENT_NAME, "
						+ "MANAGER_ID "
						+ "FROM DEPARTMENTS "
						+ "ORDER BY DEPARTMENT_NAME";
	try {
		conn=JdbcUtil.connect();
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		while(rs.next()) {
			vo = new DeptVO();
			vo.setDepartment_id(rs.getInt("department_id"));
			vo.setDepartment_name(rs.getString("department_name"));
			vo.setManager_id(rs.getInt("manager_id"));
			list.add(vo);
		}
				
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		JdbcUtil.disconnect(conn);
	}
		
		return list;
	}
}

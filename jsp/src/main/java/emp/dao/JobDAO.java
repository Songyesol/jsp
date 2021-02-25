package emp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import emp.serv.JdbcUtil;

public class JobDAO {
	
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	private static JobDAO instance;
	public static JobDAO getInstance() {
		if(instance == null) {
			instance = new JobDAO();
		}
		return instance;
	}
	
	public ArrayList<JobVO> selectAll(){
		ArrayList<JobVO> list = new ArrayList<JobVO>();
		JobVO vo = null;
		String sql = "SELECT JOB_ID, "
					+ "JOB_TITLE "
					+ "FROM JOBS "
					+ "ORDER BY JOB_TITLE";
		try {
			conn= JdbcUtil.connect();
			psmt = conn.prepareStatement(sql);
			rs=psmt.executeQuery();
			while(rs.next()) {
				vo = new JobVO();
				vo.setJob_id(rs.getString("job_id"));
				vo.setJob_title(rs.getString("job_title"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}

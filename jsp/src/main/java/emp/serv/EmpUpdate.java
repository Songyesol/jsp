package emp.serv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dao.DeptDAO;
import emp.dao.DeptVO;
import emp.dao.EmpDAO;
import emp.dao.EmpVO;
import emp.dao.JobDAO;
import emp.dao.JobVO;

/**
 * Servlet implementation class EmpUpdate
 */
public class EmpUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EmpUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

    //수정페이지로 이동 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<JobVO> jobList = JobDAO.getInstance().selectAll();
		ArrayList<DeptVO> deptList = DeptDAO.getInstance().selectAll();
		
		//수정할 사원정보 단건조회
		String empid = request.getParameter("employee_id");
		EmpVO empVO = EmpDAO.getInstance().selectOne(empid);
		
		request.setAttribute("empVO", empVO);
		request.setAttribute("jobList", jobList);
		request.setAttribute("deptList", deptList);
		request.getRequestDispatcher("/emp/empInsert.jsp")
		.forward(request, response);
	}
	
	//수정 처리 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

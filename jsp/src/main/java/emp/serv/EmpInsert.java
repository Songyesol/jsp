package emp.serv;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.DateUtil;
import emp.dao.DeptDAO;
import emp.dao.DeptVO;
import emp.dao.EmpDAO;
import emp.dao.EmpVO;
import emp.dao.JobDAO;
import emp.dao.JobVO;

/**
 * Servlet implementation class EmpInsert
 */
public class EmpInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //등록페이지로 이동
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<JobVO> jobList = JobDAO.getInstance().selectAll();
		ArrayList<DeptVO> deptList = DeptDAO.getInstance().selectAll();
		request.setAttribute("jobList", jobList);
		request.setAttribute("deptList", deptList);
		request.getRequestDispatcher("/emp/empInsert.jsp")
		.forward(request, response); //request 정보를 다음페이지까지 전달
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//등록처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hire_date = request.getParameter("hire_date");
		//Builder 객체생성과 초기화를 한번에 처리
		EmpVO empVO = EmpVO.builder()
					.last_name(request.getParameter("last_name"))
					.department_id(request.getParameter("department_id"))
					.email(request.getParameter("email"))
					.employee_id(request.getParameter("employee_id"))
					.job_id(request.getParameter("job_id"))
					.hire_date(DateUtil.toDate(hire_date))
					.build(); 
		EmpDAO.getInstance().insert(empVO);
		response.sendRedirect("EmpList");
		//request.getRequestDispatcher("EmpList").forward(request, response);
		//jsp 페이지로 이동해야할때는 forword , servlet으로 이동해야할때는 sendRedirect
	}

}

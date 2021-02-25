package emp.serv;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import emp.dao.EmpDAO;
import emp.dao.EmpVO;



public class EmpList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EmpList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<EmpVO> list = EmpDAO.getInstance().selectList();
		//넘기기 전 결과를 담는것
		System.out.println(list);
		request.setAttribute("list", list);
		
		//전달
		request.getRequestDispatcher("/emp/list.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

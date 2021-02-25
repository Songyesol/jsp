package emp.dao;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor //인수가 없는 빈 생성자
@AllArgsConstructor //모든 객체가 들어간 생성자
public class EmpVO {
	//ctrl + shift + y = 소문자
	//ctrl + shift + x = 대문자
	
	private String employee_id;
	private String first_name;
	private String last_name;
	private String email;
	private String phone_number;
	private Date hire_date;
	private String job_id;
	private Integer salary;
	private String commission_pct;
	private String manager_id;
	private String department_id;
	
}

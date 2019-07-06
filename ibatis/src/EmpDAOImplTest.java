

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.seoulit.career.model.CareerBeans;
import com.seoulit.emp.model.EmpBeans;


import java.io.Reader;
import java.util.List;

public class EmpDAOImplTest{
	
	public static void main(String arg[]) throws Exception {
		EmpBeans empBean;
		CareerBeans careerBeans;
		String resource = "SqlMapConfig1.xml";
		Reader reader = Resources.getResourceAsReader (resource);
		SqlMapClient sqlMap = SqlMapClientBuilder.buildSqlMapClient(reader);
		List empList  = sqlMap.queryForList("Emp.searchEmp","김");
		int len=empList.size();
		for(int n=0;n<len;n++){
			empBean=(EmpBeans) empList.get(n);
			careerBeans = (CareerBeans)empBean.getCareer().get(0);
			System.out.println(empBean.getCareer().getClass().getName());
			System.out.println("career size " + empBean.getCareer().size());
			System.out.println("education size " + empBean.getEducation().size());
			System.out.println(empBean.getEmpId() + " "  + empBean.getName() + " "+ careerBeans.getPosition());	
		}
	}
}

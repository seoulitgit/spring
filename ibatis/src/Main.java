import com.ibatis.sqlmap.client.*;
import com.ibatis.common.resources.Resources;
import java.io.Reader;
import test.Employee;
public class Main {
	public static void main(String arg[]) throws Exception {
		String resource = "SqlMapConfig1.xml";
		Reader reader = Resources.getResourceAsReader (resource);
		SqlMapClient sqlMapClient = SqlMapClientBuilder.buildSqlMapClient(reader);
		Employee emp  = (Employee)sqlMapClient.queryForObject("employee.getEmployee", 10);
		System.out.println(emp.getFirstName() + " ");	
	}
}
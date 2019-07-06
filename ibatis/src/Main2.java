import com.ibatis.sqlmap.client.*;
import com.ibatis.common.resources.Resources;
import java.io.Reader;
import java.util.List;

import test.Employee;
public class Main2 {
	public static void main(String arg[]) throws Exception {
		String resource = "SqlMapConfig1.xml";
		Reader reader = Resources.getResourceAsReader (resource);
		
		SqlMapClient sqlMapClient = SqlMapClientBuilder.buildSqlMapClient(reader);
		List list  = sqlMapClient.queryForList("getAllUsers","EMPLOYEE");
		for(int i=0;i<list.size();i++) {
			System.out.println(list.get(i));
		}		
	}
}
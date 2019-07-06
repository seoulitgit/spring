import com.ibatis.sqlmap.client.*;
import com.ibatis.common.resources.Resources;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

public class Main1 {
	public static void main(String arg[]) throws Exception {
		Map m = new HashMap();
		m.put("sid", "1111");
		m.put("rid","2222");
		m.put("money",20000);
		String resource = "SqlMapConfig1.xml";
		Reader reader = Resources.getResourceAsReader (resource);
		SqlMapClient sqlMapClient = SqlMapClientBuilder.buildSqlMapClient(reader);
		sqlMapClient.update("transferCash", m);
		System.out.println(m.get("error_code"));	
		System.out.println(m.get("error_msg"));
	}
}
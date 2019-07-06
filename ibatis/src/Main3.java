import com.ibatis.sqlmap.client.*;
import com.ibatis.common.resources.Resources;
import java.io.Reader;
import java.util.List;
import test.Account;
import test.Employee;

public class Main3 {
	public static void main(String arg[]) throws Exception {
		String resource = "SqlMapConfig1.xml";
		Reader reader = Resources.getResourceAsReader (resource);
		SqlMapClient sqlMapClient = SqlMapClientBuilder.buildSqlMapClient(reader);
		Account account = new Account();
		account.setUserName("hong");
		account.setPassword("1111");
		sqlMapClient.insert("insertSequence",account);		
		System.out.println("계정아이디 :" + account.getAccountId());
	}
}
package svc;

import vo.User;
import java.sql.*;
import dao.LoginDao;
import static util.DbUtil_login.*;

public class LoginBiz {
	public User getUserLogin(String id, String passwd) {
		Connection con = getConnection();
		LoginDao loginDao = new LoginDao(con);
		User user = loginDao.getUserLogin(id, passwd);
		close(con);
		
		return user;
	}
}

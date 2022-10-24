package com.bk.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.jdbc.dao.BkDao;
import com.jdbc.utils.JDBCUtils;

public class ReadbkDao implements BkDao {//實作Dao介面
	
	public boolean addBk(Bk bk) {
		int q1=0, q2=0, q3=0, q4=0, q5=0, q6=0;
		//取得書籍一~六數量
		q1 = bk.getQuantity1();
		q2 = bk.getQuantity2();
		q3 = bk.getQuantity3();
		q4 = bk.getQuantity4();
		q5 = bk.getQuantity5();
		q6 = bk.getQuantity6();
		String account = bk.getAccount();
		String Date = bk.getDate();
		Connection con = null;
		PreparedStatement stmt = null;
		int i = 0;
		try {
			con = JDBCUtils.getConnection();
			String sql = "INSERT INTO booking(account,bname,bnum,quantity,date) VALUES(?,?,?,?,?)";
			stmt = con.prepareStatement(sql);
			
			if (q1 != 0) {//判斷預訂書籍一數量不為0時才寫入資料庫
				stmt.setString(1, account);
				stmt.setString(2, bk.getBname1());
				stmt.setString(3, bk.getBnum1());
				stmt.setInt(4, q1);
				stmt.setString(5, Date);
				stmt.executeUpdate();
				stmt.clearParameters();
			}
			if (q2 != 0) {//判斷預訂書籍二數量不為0時才寫入資料庫
				stmt.setString(1, account);
				stmt.setString(2, bk.getBname2());
				stmt.setString(3, bk.getBnum2());
				stmt.setInt(4, q2);
				stmt.setString(5, Date);
				stmt.executeUpdate();
				stmt.clearParameters();
			}
			if (q3 != 0) {//判斷預訂書籍三數量不為0時才寫入資料庫
				stmt.setString(1, account);
				stmt.setString(2, bk.getBname3());
				stmt.setString(3, bk.getBnum3());
				stmt.setInt(4, q3);
				stmt.setString(5, Date);
				stmt.executeUpdate();
				stmt.clearParameters();
			}
			if (q4 != 0) {//判斷預訂書籍四數量不為0時才寫入資料庫
				stmt.setString(1, account);
				stmt.setString(2, bk.getBname4());
				stmt.setString(3, bk.getBnum4());
				stmt.setInt(4, q4);
				stmt.setString(5, Date);
				stmt.executeUpdate();
				stmt.clearParameters();
			}
			if (q5 != 0) {//判斷預訂書籍五數量不為0時才寫入資料庫
				stmt.setString(1, account);
				stmt.setString(2, bk.getBname5());
				stmt.setString(3, bk.getBnum5());
				stmt.setInt(4, q5);
				stmt.setString(5, Date);
				stmt.executeUpdate();
				stmt.clearParameters();
			}
			if (q6 != 0) {//判斷預訂書籍六數量不為0時才寫入資料庫
				stmt.setString(1, account);
				stmt.setString(2, bk.getBname6());
				stmt.setString(3, bk.getBnum6());
				stmt.setInt(4, q6);
				stmt.setString(5, Date);
				stmt.executeUpdate();
				stmt.clearParameters();
			}
			i = stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtils.close(null, stmt, con);
		}
		if (i > 0) {
			return true;
			
		} else {
			return false;
			
		}

	}

}

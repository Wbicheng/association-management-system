package Bean;
import java.sql.*;
public class DBBean {
	private String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

//	private String dbURL = "jdbc:sqlserver://localhost:1433;DatabaseName=Text";//本地端口
	private String dbURL = "jdbc:sqlserver://10.210.17.244;DatabaseName=userlogin";
	private String userName = "sa";
	private String userPwd = "sqlmanager";
	private Connection conn=null;
	private Statement stmt=null;
	public DBBean() {
		try
		{
			Class.forName(driverName);
			conn=DriverManager.getConnection(dbURL, userName, userPwd);
			stmt=conn.createStatement();			
		}
		catch (Exception ex) {
			System.out.println("数据库连接失败");
		}
	}
	public int executeUpdate(String s) {
        int result = 0;
        System.out.println("--更新语句:"+s+"\n");
        try {
            result = stmt.executeUpdate(s);
        } catch (Exception ex) {
            System.out.println("执行更新错误！");
        }
        return result;
    }

    public ResultSet executeQuery(String s) {
        ResultSet rs = null;
        System.out.print("--查询语句:"+s+"\n");
        try {
            rs = stmt.executeQuery(s);
        } catch (Exception ex) {
            System.out.println("ִ执行查询错误！");
        }
        return rs;
    }
    public void execQuery(String s){
        try {
            stmt.executeUpdate (s);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            System.out.println("执行插入错误！");
        }
    }

    public void close() {
        try {
            stmt.close();
            conn.close();
        } catch (Exception e) {
        }
    }
}

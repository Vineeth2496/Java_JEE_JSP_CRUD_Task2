package Model;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;
import java.util.Vector;

import javax.sql.rowset.JdbcRowSet;
import javax.sql.rowset.RowSetFactory;
import javax.sql.rowset.RowSetProvider;


public class DataLogics {
	public static Connection mycon()
	{
		Connection con=null;
		try {
			FileInputStream fi=new FileInputStream("C:\\Users\\vinee\\OneDrive\\Desktop\\Java\\Practice\\Collections Frame Works\\com.jsptask2\\jdbc.properties");
			Properties p=new Properties();
			p.load(fi);
			Class.forName(p.getProperty("jdbc.driver")).newInstance();
			con=DriverManager.getConnection(p.getProperty("jdbc.url"), p.getProperty("jdbc.username"), p.getProperty("jdbc.password"));
			System.out.println(con);
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}
	
	public int register_logics(Data d)
	{
		int r = 0;
		Connection con=DataLogics.mycon();
	
		try {
			PreparedStatement pst=con.prepareStatement("insert into institute values(?,?,?,?,?,?,?,?)");
			pst.setString(1, d.getFirstname());
			pst.setString(2, d.getLastname());
			pst.setString(3, d.getEmail());
			pst.setString(4, d.getRegno());
			pst.setString(5, d.getPassword());
			pst.setString(6, d.getStdcode());
			pst.setString(7, d.getPhoneno());
			pst.setString(8, d.getGender());
			int i=pst.executeUpdate();
			r=i;
			}
			catch (Exception e) {
			// 	TODO: handle exception
				e.printStackTrace();
			}
		return r;
	}
	
	public Vector AdminLoginLogics()
	{
		Vector v=new Vector();
		try
		{
			FileInputStream fi=new FileInputStream("C:\\Users\\vinee\\OneDrive\\Desktop\\Java\\Practice\\Collections Frame Works\\com.jsptask2\\jdbc.properties");
			Properties p=new Properties();
			p.load(fi);
			Class.forName(p.getProperty("jdbc.driver"));
			RowSetFactory rs=RowSetProvider.newFactory();
			JdbcRowSet jr=rs.createJdbcRowSet();
			jr.setUrl(p.getProperty("jdbc.url"));
			jr.setUsername(p.getProperty("jdbc.username"));
			jr.setPassword(p.getProperty("jdbc.password"));
			jr.setCommand("select regno,password from institute");
			jr.execute();
			for(;jr.next();)
			{
				v.add(jr.getString("regno"));
				v.add(jr.getString("password"));
			}
			
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return v;
	}
	
	public Vector AdminProfileLogics(Data d)
	{
		Vector v=new Vector();
		try
		{

			FileInputStream fi=new FileInputStream("C:\\Users\\vinee\\OneDrive\\Desktop\\Java\\Practice\\Collections Frame Works\\com.jsptask2\\jdbc.properties");
			Properties p=new Properties();
			p.load(fi);
			Class.forName(p.getProperty("jdbc.driver"));
			RowSetFactory rf=RowSetProvider.newFactory();
			JdbcRowSet jr=rf.createJdbcRowSet();
			jr.setUrl(p.getProperty("jdbc.url"));
			jr.setUsername(p.getProperty("jdbc.username"));
			jr.setPassword(p.getProperty("jdbc.password"));
			jr.setCommand("select * from institute");
		
			jr.execute();
			
			
			while(jr.next())
				{
					v.add(jr.getString("firstname"));
					v.add(jr.getString("lastname"));
					v.add(jr.getString("email"));
					v.add(jr.getString("regno"));
					v.add(jr.getString("password"));
					v.add(jr.getString("stdcode"));
					v.add(jr.getString("phoneno"));
					v.add(jr.getString("gender"));
				}
				
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return v;
	}


}

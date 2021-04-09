package com.fjsdxy;
import java.sql.*;
public class bookinfo {
	
	/*  ����4��֪ʶ��
	 *  1. ��Ϥjsp���﷨����䣬���س�������޸�
	 *  2. sql���
	 *  3. jsp�е�Bean����
	 *  4.���ݿ�ļ򵥲���
	 */
	
	private String driverStr="net.ucanaccess.jdbc.UcanaccessDriver";
	private String connStr="jdbc:ucanaccess://d:\\ec\\tsgl\\book.mdb";	
    private Connection conn=null;
    private Statement stmt=null;
    public bookinfo()   /*��������*/
    {
    	try{
    		Class.forName(driverStr);
    		conn = DriverManager.getConnection(connStr);    		
    		stmt = conn.createStatement();
    	}
    	catch(Exception ex){System.out.println( ex.toString() );}
    }
    
    
    public int executeUpdate(String s)
    {
    	int result=0;
    	try{result=stmt.executeUpdate(s);}
    	catch(Exception ex){System.out.println("ִ�и��´���");}
    	return result;
    }
    public ResultSet executeQuery(String s)
    {
    	ResultSet rs=null;
    	try{rs=stmt.executeQuery(s);}
    	catch(Exception ex){System.out.println("ִ�в�ѯ����");}
    	return rs;
    }
    
    public void close()
    {
    	try{
    		stmt.close();
    		conn.close();
    	}
    	catch(Exception e){}
    }
 
}

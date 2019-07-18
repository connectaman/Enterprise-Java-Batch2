package com.Batch2.Register;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class RegisterDAO {
public static int addRegister(RegisterModel res) {
	int result=0;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Batch2", "root", "Amanulla1997");
		PreparedStatement pst = con.prepareStatement("insert into Batch2.register(name,email,phone,password,city) values(?,?,?,?,?)");
		pst.setString(1,res.getName());
		pst.setString(2,res.getEmail());
		pst.setString(3,res.getPhone());
		pst.setString(4,res.getPassword());
		pst.setString(5,res.getCity());
		result = pst.executeUpdate();
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return result;
}
}

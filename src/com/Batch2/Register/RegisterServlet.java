package com.Batch2.Register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String name = request.getParameter("name");
	String email = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String password = request.getParameter("pass");
	String city = request.getParameter("city");
	RegisterModel r = new RegisterModel();
	r.setName(name);
	r.setEmail(email);
	r.setPhone(phone);
	r.setPassword(password);
	r.setCity(city);
	int result = RegisterDAO.addRegister(r);
	System.out.println(result);
	}

}

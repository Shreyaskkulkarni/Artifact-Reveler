<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
String cpass=request.getParameter("cpass");
String email=request.getParameter("email");
if(uname!=null && pass!=null && cpass!=null && email!=null)
{
try
{
	Class.forName("org.postgresql.Driver");
	Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Shrey@s");
	Statement st=con.createStatement();
	String s="insert into LogReg1 values('"+uname+"','"+pass+"','"+cpass+"','"+email+"','shreyask')";
	int k=st.executeUpdate(s);
	if(k>=1)
	{
		out.println("Registered");	
	}
	else
	{
		out.println("failed");
	}

	
	
	
}

catch(Exception e)
{}
}

%>
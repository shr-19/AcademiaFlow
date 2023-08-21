<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
                    pageEncoding="ISO-8859-1"%>
                    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
Connection con;
String id=request.getParameter("id");
String userid="root";
String password="shruti@19";
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/student";
    con=DriverManager.getConnection(url,userid,password);
    Statement stmt=con.createStatement();

%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Std-View</title>
    <style>
        table,th,td{
            border:1px solid black;
        }
        .table{
            border: 2px solid black;
            width: 1000px;
            padding:20px;
            margin-left: auto;
            margin-right: auto;
        }
        tr:hover{
            background-color: cadetblue;
        }
        th{
            background-color: rgb(123, 119, 119);
            color: white;
        }
        td{
            width:1000px;
        }
    </style>
</head>
<body>
    
    <div>
    <div class="table">
        <table>
            <caption>Registered Students Detail</caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Course</th>
                <th>Department</th>
                <th>Email</th>
                <th>Contact</th>
            </tr>

<%
ResultSet rs=stmt.executeQuery("select * from student_info");
while(rs.next()){
    int sid=rs.getInt("id");

%>
<tr>
    <td><%=sid%></td>
    <td><%=rs.getString("name")%></td>
    <td><%=rs.getString("course")%></td>
    <td><%=rs.getString("department")%></td>
    <td><%=rs.getString("email")%></td>
    <td><%=rs.getString("contact")%></td>
    <td><a href="stddel?id=<%=sid%>">Delete</a></td>
    <td> <a href="stdupd?id=<%=sid %>">Edit</a></td>
</tr>
<%}
}catch(Exception e){
    e.printStackTrace();
}
%>

        </table>
    </div>
</div>
    
</body>
</html>
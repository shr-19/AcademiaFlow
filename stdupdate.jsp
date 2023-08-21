<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
                    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String name=null;
String course=null;
String dept=null;
String email=null;
String contact=null;
int id=(int) request.getAttribute("id");
Connection con;
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url="jdbc:mysql://localhost:3306/student";
    con=DriverManager.getConnection(url,"root","shruti@19");
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select * from student_info where id="+id);
    while(rs.next()){
         name=rs.getString("name");
         course=rs.getString("course");
         dept=rs.getString("dept");
         email=rs.getString("email");
         contact=rs.getString("contact");
    }
    
   
}catch(Exception e){
    e.printStackTrace();
}

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Std-Upd</title>
    <style>
        .update{
            text-align: center;
            background-position: center;
            padding-bottom: 1%;
            margin-top: 5%;
            margin-right: 20px;
            background-color: rgb(11, 42, 110);
            margin-left: 30%;
            margin-right: 30%;
            height:20%;
            box-shadow: 0.5em 0.5em 0.5em 0.5em rgb(77, 104, 150);  
        }
        input[type=text]{
            padding:10px;
            margin: 5px 0px;
            border:0;
            border-bottom: 1px solid #eee;
            box-shadow:0 0 15px 4px rgba(0,0,0,0.06);

        }
        input[type=button]{
            width:25%;
            margin-top: 5%;
            text-align: center;
            padding:10px;
            border:none;
            font-weight: 600;
            color: black;
        }
        input[type=submit]:hover{
            color:white;
            background-color: black;
        }
        select{
            width:38%;
            padding:10px;
            margin: 5px 0px;
            border:0;
            border-bottom: 1px solid #eee;
            box-shadow:0 0 15px 4px rgba(0,0,0,0.06);
        }
        </style>
</head>
<body>
    <div>
    <div style="width:20%">
        <jsp:include page="stdheader.jsp"/>
    </div>
    <div class="update">
        <form action="stdupddata" method="post">
            <h2 style="color: white;">Update Details</h2>
            <input type="text" name="id" value="<%=id%>" placeholder="Enter Your ID.."><br>
            <input type="text" name="name" value="<%=name%>" placeholder="Enter Your Name.."><br>
            <select name="courses">
                <option value="Select The Course">Select The Course..</option>
                <option value="B.Tech">B.Tech</option>
                <option value="M.Tech">M.Tech</option>
                <option value="B.Sc">B.Sc</option>
                <option value="M.Sc">M.Sc</option>
                <option value="BCA">BCA</option>
                <option value="MCA">MCA</option>
                <option value="BBA">BBA</option>
                <option value="MBA">MBA</option>
                <option value="BA">BA</option>
                <option value="MA">MA</option>
                <option value="LLB">LLB</option>
                <option value="B.Com">B.Com</option>
                <option value="M.Com">M.Com</option>
                <option value="B.Des">B.Des</option>
                <option value="M.Des">M.Des</option>
            </select><br>
            <input type="text" name="dept" value="<%=dept%>" placeholder="Enter Your Department.."><br>
            <input type="text" name="email" value="<%=email%>" placeholder="Enter Your Email.."><br>
            <input type="text" name="contact" value="<%=contact%>"  placeholder="Enter Your Contact.."><br>
            <input type="submit" value="Update Details" >
        </form>
    </div>
</div>
    
    
</body>
</html>
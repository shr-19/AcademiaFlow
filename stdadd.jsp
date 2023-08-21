<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Std-Add</title>
    <style>
        .add{
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
            display: inline-block;
            transition: background-color 0.3s;
        }
        select{
            width:38%;
            padding:10px;
            margin: 5px 0px;
            border:0;
            border-bottom: 1px solid #eee;
            box-shadow:0 0 15px 4px rgba(0,0,0,0.06);
        }
        .img{
            display: grid;
            place-items: center;
            height:30px;
        }

        
    </style>
</head>
<body>
    
    <div>
    <div class="img">
        <img src="user.jpg">
    </div>
    <div style="width:20%">
        <% 
    boolean b=false;
    Cookie c=null;
    Cookie[] cookie=null;
    cookie=request.getCookies();
    if(cookie!=null){
        for(int i=0;i<cookie.length;i++){
            c=cookie[i];
            if((c.getName()).compareTo("uemail")==0){
                b=false;
            }
            else{
                b=true;
                
            }
        }
    }else{
        out.println("failed");
    }
    if(b){

    
    %>
    <jsp:include page="panel.jsp"/>
  
    <%}
    else{ %>
        <jsp:include page="stdheader.jsp"/>
    <% }%>
        
    </div>
    <div class="add">
        <form action="stdadd" method="post">
            <h2 style="color: #eee;">Add Details</h2>
            <input type="text" name="id" placeholder="Enter Your ID.."><br>
            <input type="text" name="name" placeholder="Enter Your Name.."><br>
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
            <input type="text" name="dept" placeholder="Enter Your Department.."><br>
            <input type="text" name="email" placeholder="Enter Your Email.."><br>
            <input type="text" name="contact" placeholder="Enter Your Contact.."><br>
            <input type="submit" value="Add">
        </form>
    </div>
</div>
    
</body>
</html>
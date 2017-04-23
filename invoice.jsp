<%-- 
    Document   : invoice
    Created on : Apr 23, 2017, 10:27:54 AM
    Author     : adidobariya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Invoice</title>
    </head>
    <body>
        <h1>Air India</h1>
        <form method="get" action="SendEmail.jsp">
            <label>Name</lable>
            <input name="name"/>
            
        <table  cellspacing="0" cellpadding="10" border="1">
               
       
            
	<tr>
		<th> Date </th>
                <td><input type="date" name="date" min="2017-04-23" >
                </td>
    	</tr>
        
       <tr>
            <th> Flight </th>
            <td><input type="text" name="flight"></td>
        </tr>
        
	<tr>
            <th>Departure</th>
            <td><input type="text" name="dep"></td>
        </tr>
        
        <tr>
            <th>Time:</th>
            <td><input type="time" name="time"></td>
        </tr>
        <tr>
            <th>Arrival</th>
            <td><input type="text" name="ari"></td>
        </tr>
        
        <tr>
            <th>Time:</th>
            <td><input type="time" name="time1"></td>
        </tr>
        <tr>
            <th>Class</th>
            <td><input type="text" name="class"></td>
        </tr>
        <tr>
            <th>Bag</th>
            <td><input type="text" name="bag"></td>
        </tr>
        
        <tr>
                <th></th>
                 <td>
                               <input type="submit" name="b1" value="submit">                                  
                                <input type="reset" name="b2" value="Cancel">
                </td>
                           
        </tr>
		</table>   
</form>

    </body>
</html>

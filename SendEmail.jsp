<%@page import ="java.util.Properties" %>
<%@page import =" javax.mail.*" %>
<%@page import ="javax.mail.internet.*" %>
<%
   
    //from,password,to,subject,message  
    String mailstr = "<html><head><title> Invoice</title></head><body><h1>Air India</h1><label>Name&nbsp;</lable><lable>@@name</lable><table  cellspacing='0' cellpadding='10' border='1'><tr><th> Date </th><td><lable>@@Date</lable> </td></tr> <tr> <th> Flight </th><td><lable>@@Flight</lable></td> </tr><tr><th>Departure</th><td><lable>@@Departure</lable></td></tr><tr><th>Time:</th><td><lable>@@Time</lable></td></tr> <tr>  <th>Arrival</th><td><lable>@@Arrival</lable></td></tr><tr><th>Time </th><td><lable>@@Time1</lable></td></tr><tr> <th>Class</th><td><lable>@@Class</lable></td></tr> <tr>  <th>Bag</th><td><lable>@@Bag</lable></td></tr></table>  </form><h1>Wish you a happy journey</h1><br><h2>Thank you for Booking Ticket</h2></body></html>";
        
    //String date=   request.getParameter("date");
    String name = "";
    String date   = "";
    String flight   = "";
    String Departure ="";
    String Time="";
    String Arrival = "";
    String Time1 = "";
    String Class =  "";
    String Bag =   "";
    
     if(request.getParameter("name")!=null){
     name   =  request.getParameter("name");
    }  
     else
     {
         date="null";
     }
    
     if(request.getParameter("date")!=null){
     date   =  request.getParameter("date");
    }  
     else
     {
         date="null";
     }
    if(request.getParameter("flight")!=null){
     flight   =  request.getParameter("flight");
    }
    else
     {
         date="null";
     }
    if(request.getParameter("dep")!=null){
      Departure  =  request.getParameter("dep");
    }
    else
     {
         flight="null";
     }
    if(request.getParameter("time")!=null){
     Time     = request.getParameter("time");
    }else
     {
         Time="null";
     }
    
    if(request.getParameter("ari")!=null){
      Arrival  =  request.getParameter("ari");
    }else
     {
         Arrival="null";
     }
    
    if(request.getParameter("time1")!=null){
     Time1   =  request.getParameter("time1");
    }
    else
     {
         Time1="null";
     }
    if(request.getParameter("class")!=null){
     Class   =  request.getParameter("class"); 
    }
    else
     {
         Class="null";
     }
    if(request.getParameter("bag")!=null){
       Bag =  request.getParameter("bag");
    }
    else
     {
         Bag="null";
     }
    
    
    
    //     out.println(date);
     
     // out.println(flight);
     //Departure   =    request.getParameter("Departure");
      // out.println(Departure);
       
              mailstr = mailstr.replace("@@name",name);
          mailstr = mailstr.replace("@@Date",date);
           mailstr = mailstr.replace("@@Flight",flight);
            mailstr = mailstr.replace("@@Departure",Departure); 
            mailstr = mailstr.replace("@@Time",Time);
            mailstr = mailstr.replace("@@Arrival",Arrival); 
            mailstr = mailstr.replace("@@Time1",Time1);
             mailstr = mailstr.replace("@@Class",Class);
              mailstr = mailstr.replace("@@Bag",Bag);
            
           
            
            
               
     //change from, password and to  
    Properties props = new Properties();    
  
   String host = "smtp.gmail.com";
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
props.put("mail.smtp.user", "airlinereservation2017@gmail.com");
        props.put("mail.smtp.password", "Admin@1234");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
          //get Session
          
           Session session1 = Session.getInstance(props,    
           new javax.mail.Authenticator() {    
           protected PasswordAuthentication getPasswordAuthentication() {    
           return new PasswordAuthentication("airlinereservation2017@gmail.com","Admin@1234");  
           }    
          });    
          
          //compose message    
          try {    
           MimeMessage message = new MimeMessage(session1);    
           message.addRecipient(Message.RecipientType.TO,new InternetAddress("pragatidobariya10@gmail.com"));    
           message.setSubject("Airline Receipt");    
           //message.setText(""); 
           message.setContent(mailstr,"text/html; charset=utf-8");
           
           
           //send message  
           Transport.send(message);    
           System.out.println("message sent successfully");    
          } catch (MessagingException e) {throw new RuntimeException(e);}    

   
  
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="src.OrderPojo"%> 
<%@page import="src.OrderDetails"%> 
<%@page import="java.util.List"%> 

<!DOCTYPE html>
<html>
<head>
<title>Admin Page</title>
<link rel="stylesheet" href="style1.css">
</head>
<% //In case, if Admin session is not set, redirect to Login page
if((request.getSession(false).getAttribute("Level 1")== null) )
{
%>
<jsp:forward page="/index.jsp"></jsp:forward>
<%} %>
<body>
<div>
  <img id="logo" src="hrc-logo.jpg">
</div>

<div>
<img id="logo1"  src="abc-logo.png">
</div>

 
<h4> Welcome <%=request.getAttribute("userName") %> </h4>

<div>		<button class="mbutton" id="button">ADD</button>
<button class="mbutton" id="button2">EDIT</button>
	</div>



<section class="container">
<div class="search-container">
    <form>
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
  
 <div class="bg-modal">
	<div class="modal-contents">

		<div class="close">+</div>
		

		<form action="" method="POST">
			<div><input type="number" placeholder="Order ID"></div>
			<div><input type="number" placeholder="Order Date"></div>
			<div><input type="text" placeholder="Customer Name"></div>
			<div><input type="number" placeholder="Customer number"></div>
			<div><input type="number" placeholder="Order Amount"></div>
			<div><input type="text" placeholder="Notes"></div>
			<a href="#" class="button">ADD</a>
		</form>

	</div>
</div>
      <table id="orders" width="500" align="center"> 
         <tr> 
          <th><b>Order Date</b></th> 
          <th><b>Approved By</b></th> 
          <th><b>Order ID</b></th>
          <th><b>Company Name</b></th>
          <th><b>Company ID</b></th>
          <th><b>Order Amount</b></th>
          <th><b>Approval Status</b></th>
          <th><b>Notes</b></th> 
         </tr> 
      
        <%List<OrderPojo> op = 
        (List<OrderPojo>)request.getAttribute("OrderList"); 
        for(OrderPojo o:op){%> 
     
            <tr> 
                <td><%=o.getOrderDate()%></td> 
                <td><%=o.getApprovedBy()%></td> 
                <td><%=o.getOrderID()%></td> 
                <td><%=o.getCustomerName()%></td> 
                <td><%=o.getCustomerID()%></td> 
                <td>INR <%=o.getOrderAmount()%></td> 
                <td><%=o.getApprovalStatus()%></td> 
                <td><%=o.getNotes()%></td> 
            </tr> 
            <%}%> 
        </table> 
        
 </section>  


 
<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a></div>
</body>
</html>
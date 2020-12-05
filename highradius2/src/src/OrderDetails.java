package src;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import src.DBConnection;
 
public class OrderDetails {

	public static List<OrderPojo> getOrderDetails()
	{
		OrderPojo order=null;
		Connection dbcon =null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<OrderPojo> al=new ArrayList<>();
		String query="select * from order_details";
		try{
			dbcon = DBConnection.createConnection();		
			pstmt=dbcon.prepareStatement(query);
			
			
			
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				order=new OrderPojo();
				order.setOrderID(rs.getInt(1));
				order.setCustomerName(rs.getString(2));
				order.setCustomerID(rs.getInt(3));
				order.setOrderAmount(rs.getInt(4));
				order.setApprovalStatus(rs.getString(5));
				order.setApprovedBy(rs.getString(6));
				order.setNotes(rs.getString(7));
				order.setOrderDate(rs.getDate(8));
				
				al.add(order);	
							
			}
			
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} 
		finally {
            if (dbcon != null) {
                try {
                    dbcon.close();
                    
                } catch (Exception e) {}
            }
		}

			
			return al;
			
			
		
	}


}

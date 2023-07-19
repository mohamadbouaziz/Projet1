package Reclamation;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
public class Staff {
    Connection con;
    Statement st;
    ResultSet rs;
    private Object conn;
    private Object stmt;
    public Staff(){};
    
   
    public int  verfier(HttpServletRequest request)throws ClassNotFoundException, SQLException{
        String adresse_email=request.getParameter("Adresse Email");
        String CIN_Passeport=request.getParameter("Mot de passel");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String req = "select *  from STAFF  where (CIN='"+CIN_Passeport+"') and  (ADRESSE_EMAIL ='"+adresse_email+"')";
        rs=st.executeQuery(req);
        if (rs.next()){
            rs.close();
            st.close();
            con.close();
            return 1;
        }
        else{
            rs.close();
            st.close();
            con.close();
            return 0;
        }
    }
    
    
}



package Reclamation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class transmisse extends HttpServlet {

   
    public transmisse(){
        super();
    }

   
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        
        String adresse_email = request.getParameter("adresse_email");
        HttpSession session=request.getSession();  
        session.setAttribute("adresse_email",adresse_email);
        response.sendRedirect("chambre");
       
        //this.getServletContext().getRequestDispatcher("/ReclamationListe.jsp").forward(request, response);
       
   
    }

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
         
    }   
}
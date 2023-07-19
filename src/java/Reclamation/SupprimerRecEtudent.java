package Reclamation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class SupprimerRecEtudent extends HttpServlet {

   
    public SupprimerRecEtudent(){
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      
       
    }
    

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        

       
      

    
       
        try {
           
            Reclamation r = new Reclamation();
            r.supprimer(request);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AjouterAvis.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AjouterAvis.class.getName()).log(Level.SEVERE, null, ex);
        }

            response.sendRedirect("Etudient"); 
    

    }

}


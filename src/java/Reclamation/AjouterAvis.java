package Reclamation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class AjouterAvis extends HttpServlet {

   
    public AjouterAvis(){
        super();
    }

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String NUMERO_CHAMBRE = request.getParameter("NUMERO_CHAMBRE");
        String TYPE = request.getParameter("TYPE");
        String COMMENTAIRE = request.getParameter("COMMENTAIRE");
        String ETAT = request.getParameter("ETAT");
        HttpSession session1=request.getSession();  
        session1.setAttribute("NUMERO_CHAMBRE",NUMERO_CHAMBRE); 
        session1.setAttribute("COMMENTAIRE", COMMENTAIRE);
       session1.setAttribute("TYPE", TYPE);
        session1.setAttribute("NUMERO_CHAMBRE", NUMERO_CHAMBRE);
        session1.setAttribute("ETAT", ETAT);
       this.getServletContext().getRequestDispatcher("/AjouterAvis.jsp").forward(request, response);
       
    }

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       HttpSession session1=request.getSession(false);
       String NUMERO_CHAMBRE=(String)session1.getAttribute("NUMERO_CHAMBRE");  
           String TYPE=(String)session1.getAttribute("TYPE");  
       String COMMENTAIRE=(String)session1.getAttribute("COMMENTAIRE");  

    String ETAT=(String)session1.getAttribute("ETAT"); 
    String Avis = request.getParameter("Avis");
    
       

    
       
        try {
            Reclamationafficher v = new Reclamationafficher(NUMERO_CHAMBRE,COMMENTAIRE,TYPE,ETAT,Avis);
            Reclamation r = new Reclamation();
            r.ajouterAvis(v);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AjouterAvis.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AjouterAvis.class.getName()).log(Level.SEVERE, null, ex);
        }

response.sendRedirect("Etudient"); 
}
    

}

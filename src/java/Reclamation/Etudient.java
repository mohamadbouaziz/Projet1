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



public class Etudient extends HttpServlet {

   
    public Etudient(){
        super();
    }

   
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        try{
        Reclamation r=new Reclamation();
 
        HttpSession session=request.getSession(false);
        
               
        if (session != null && session.getAttribute("adresse_email") != null) {
            
           
        String adresse_email=(String)session.getAttribute("adresse_email"); 
         request.setAttribute("adresse_email",adresse_email);
        List <Reclamationafficher> dataList = r.afficheEtudient(adresse_email);
        request.setAttribute("dataList",dataList);
        this.getServletContext().getRequestDispatcher("/ReclamationListeEtudient.jsp").forward(request, response);
        
        }
       
        //this.getServletContext().getRequestDispatcher("/ReclamationListe.jsp").forward(request, response);
       
    }catch(Exception e){
         System.out.println(e.getMessage());
        
    }
    }

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
         HttpSession session=request.getSession(false); 
         if (session != null && session.getAttribute("adresse_email") != null) {
        
        response.sendRedirect("ajouterRec");
       
}
    }   
}
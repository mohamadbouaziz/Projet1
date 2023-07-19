package Reclamation;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class ajouterReclamation extends HttpServlet {

   
    public ajouterReclamation(){
        super();
    }

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
        
        
        //request.setAttribute("chambre",chambre);
        this.getServletContext().getRequestDispatcher("/petudient1.jsp").forward(request, response);
        
        
       
        //this.getServletContext().getRequestDispatcher("/ReclamationListe.jsp").forward(request, response);
       
   
        
        
       
    }

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        

       
       try{
           
           Reclamation r=new Reclamation();
           r.ajouter(request);
      

       
    
    }catch(Exception e){
        System.out.println(e.getMessage());
    }
     response.sendRedirect("Etudient");

    }

}


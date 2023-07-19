package Reclamation;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class ajouter extends HttpServlet {

   
    public ajouter(){
        super();
    }

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        this.getServletContext().getRequestDispatcher("/ajouteretudient.jsp").forward(request, response);
       
    }

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        

       
       try{
           Resident r=new Resident();
           r.ajouter(request);
      

       
    
    }catch(Exception e){
        System.out.println(e.getMessage());
    }
    this.getServletContext().getRequestDispatcher("/ajouteretudient.jsp").forward(request, response);

    }

}

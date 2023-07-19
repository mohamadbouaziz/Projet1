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



public class login extends HttpServlet {

   
    public login(){
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
       
    }

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    int test=0;
    try{
        Resident r=new Resident();
        test =r.verfier(request);
    }catch(Exception e){
        System.out.println(e.getMessage());
    }   
    if(test==1){  
        String adresse_email=request.getParameter("Adresse Email");
        HttpSession session=request.getSession();  
        session.setAttribute("adresse_email",adresse_email);  
        response.sendRedirect("Etudient");
    }
    else{
        this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
    }
}
    

}

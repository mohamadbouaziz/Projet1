package Reclamation;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class LoginStaff extends HttpServlet {

   
    public LoginStaff(){
        super();
    }

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        this.getServletContext().getRequestDispatcher("/espaceadmin.jsp").forward(request, response);
       
    }

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    int test=0;
    try{
        Staff r=new Staff();
        test =r.verfier(request);
    }catch(Exception e){
        System.out.println(e.getMessage());
    }   
    if(test==1){
        this.getServletContext().getRequestDispatcher("/p1adminstration.jsp").forward(request, response);
    }
    else{
        this.getServletContext().getRequestDispatcher("/espaceadmin.jsp").forward(request, response);
    }
}
    

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Reclamation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USER
 */

public class chambre extends HttpServlet {

    public chambre(){
        super();
    }

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Resident r=new Resident();
        
        String test="true";
       try{
           demandeafficher d= r.affichedem(request);
           if((!(d.getNUMERO_CHAMBRE1().equals("0"))) && (!(d.getNUMERO_CHAMBRE2().equals("0")))) {

             request.setAttribute("d",d);
           }
           else{
               test="false";
                  
           }
           request.setAttribute("test",test); 
          
            List <String> dataList =r.affichedemande();
            request.setAttribute("dataList", dataList);
            this.getServletContext().getRequestDispatcher("/chambre.jsp").forward(request, response);
       }catch(Exception e){
  
       } 
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
       Resident r=new Resident();
       String test="true";
        try{
            r.demande(request);
            r.suppchambre(request);   
            demandeafficher d= r.affichedem(request);
           if((!(d.getNUMERO_CHAMBRE1().equals("0"))) && (!(d.getNUMERO_CHAMBRE2().equals("0")))) {
             request.setAttribute("d",d);
           }
           else{
               test="false";       
           }
           request.setAttribute("test",test); 
        }catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(chambre.class.getName()).log(Level.SEVERE, null, ex);
        }
       response.sendRedirect("chambre");
}
}


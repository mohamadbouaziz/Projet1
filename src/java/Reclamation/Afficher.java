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

public class Afficher extends HttpServlet {

    public Afficher() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Reclamation r = new Reclamation();
            List<Reclamationafficher> dataList = r.affiche();
            request.setAttribute("dataList", dataList);
            this.getServletContext().getRequestDispatcher("/ReclamationListe.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e.getMessage());

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 String ch = request.getParameter("ch");
String NUMERO_CHAMBRE = request.getParameter("NUMERO_CHAMBRE");
String TYPE = request.getParameter("TYPE");
String COMMENTAIRE = request.getParameter("COMMENTAIRE");
String ETAT = request.getParameter("ETAT");
Reclamationafficher v = new Reclamationafficher(NUMERO_CHAMBRE,COMMENTAIRE,TYPE,ETAT);
   
    try {
            Reclamation r = new Reclamation();
            r.ChangeEtat(v);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Afficher.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getMessage());
        } catch (SQLException ex) {
            Logger.getLogger(Afficher.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex.getMessage());
        }

        response.sendRedirect("Afficher");
          
    }


}

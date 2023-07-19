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

public class demande extends HttpServlet {

    public demande() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Resident r = new Resident();
            List<demandeafficher> dataList = r.affiche();
            request.setAttribute("dataList", dataList);
            this.getServletContext().getRequestDispatcher("/CHangerCHA.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e.getMessage());

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 


}
}

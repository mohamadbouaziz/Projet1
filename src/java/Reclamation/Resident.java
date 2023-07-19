
package Reclamation;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
public class Resident {
    Connection con;
    Statement st;
    ResultSet rs;
    private Object conn;
    private Object stmt;
    public Resident(){};
    
    public void ajouter(HttpServletRequest request)throws ClassNotFoundException, SQLException{
        String nom=request.getParameter("nom");
        String prenom=request.getParameter("Prenom");
        String adresse_email=request.getParameter("email");
        String Chambre=request.getParameter("Numero de Chambre");
        String niveau=request.getParameter("Niveau");
        String CIN_Passeport=request.getParameter("re_pass");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String req = "INSERT INTO RESIDENT VALUES('"+CIN_Passeport+"','"+adresse_email+"','"+nom+"','"+prenom +"',"+niveau+",'"+Chambre+"')";
        st.executeUpdate(req);   
        st.close();
        con.close();
    }
    public void supprimer(HttpServletRequest request)throws ClassNotFoundException, SQLException{
        String nom=request.getParameter("nom");
        String Chambre=request.getParameter("Numero de Chambre");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String req = "DELETE FROM RESIDENT WHERE NUM_CHAMBRE ='"+Chambre+"'";
        st.executeUpdate(req); 
        st.close();
        con.close();

    }
    public int  verfier(HttpServletRequest request)throws ClassNotFoundException, SQLException{
        String adresse_email=request.getParameter("Adresse Email");
        String CIN_Passeport=request.getParameter("Mot de passel");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String req = "select *  from RESIDENT  where (ADRESSE_EMAIL ='"+adresse_email+"') and  (CIN_OU_PASSEPORT ='"+CIN_Passeport+"')";
        rs=st.executeQuery(req);
        if (rs.next()){
            rs.close();
            st.close();
            con.close();
            return 1;
        }
        else{
            rs.close();
            st.close();
            con.close();
            return 0;
        }
    }
    public  String  chercher_chambre(String Adresse_Email)throws ClassNotFoundException, SQLException{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String req = "select * from RESIDENT where ADRESSE_EMAIL ='"+Adresse_Email+"'";
        rs=st.executeQuery(req);
        String NUMERO_CHAMBRE;
        rs.next();
        NUMERO_CHAMBRE =rs.getString("NUM_CHAMBRE");
        
        
        st.close();
        con.close();
        return NUMERO_CHAMBRE;
    }
    public  void  CHANGERCHAMBRE(String NUMERO_CHAMBRE2,String NUMERO_CHAMBRE1)throws ClassNotFoundException, SQLException{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        
        st = con.createStatement();
        String req="";
        if((!(NUMERO_CHAMBRE1.equals("")))&&(!(NUMERO_CHAMBRE2.equals("")))){
        req = "UPDATE Resident SET NUM_CHAMBRE='"+NUMERO_CHAMBRE2+"'  where (NUM_CHAMBRE='"+NUMERO_CHAMBRE1+"')";
        }
        st.executeUpdate(req);         
        st.close();
        con.close();
    }
    public  void  demande(HttpServletRequest request)throws ClassNotFoundException, SQLException{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
         HttpSession session1=request.getSession(false);
       String adresse_email=(String)session1.getAttribute("adresse_email"); 
        Resident r=new Resident();
        String chambre1= r.chercher_chambre(adresse_email);
       String chambre = request.getParameter("chambre");
       String COMMENTAIRE = request.getParameter("COMMENTAIRE");
        st = con.createStatement();
        String req="";
        
        String etat="0";
        if(!(chambre.equals(""))){
        req = "INSERT INTO DEMANDE VALUES('"+chambre1+"','"+chambre+"','"+etat+"','"+COMMENTAIRE+"')";
       
        }
        st.executeUpdate(req);   
        
        st.close();
        con.close();
    }
    public demandeafficher affichedem(HttpServletRequest request)throws ClassNotFoundException, SQLException{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        HttpSession session1=request.getSession(false);
        String adresse_email=(String)session1.getAttribute("adresse_email"); 
         Resident r=new Resident();
        String chambre1= r.chercher_chambre(adresse_email);
        String req = "select * from DEMANDE where (ANCIEN_CHAMBRE='"+chambre1+"')";
        rs=st.executeQuery(req);
       demandeafficher d=new demandeafficher() ;
        while (rs.next()){
		 d =new demandeafficher(chambre1,rs.getString("NOU_CHAMBRE"),rs.getString("ETAT"),rs.getString("COMMENTAIRE"));
        }
        st.close();
        con.close();
        return d;
    }
     public void suppchambre(HttpServletRequest request)throws ClassNotFoundException, SQLException{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String chambre = request.getParameter("chambre");
        String req = "DELETE FROM CHAMBRE WHERE NUMERO_CHAMBRE ='"+chambre+"'";
        st.executeUpdate(req); 
        st.close();
        con.close();

    }
    public List <String> affichedemande()throws ClassNotFoundException, SQLException{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String req = "select * from CHAMBRE";
        rs=st.executeQuery(req);
        List <String> dataList = new ArrayList<String>();
        while (rs.next()){
		dataList.add(rs.getString("NUMERO_CHAMBRE"));
        }
        st.close();
        con.close();
        return dataList;
    }
    public List <demandeafficher> affiche()throws ClassNotFoundException, SQLException{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String req = "select * from DEMANDE";
        rs=st.executeQuery(req);
        List <demandeafficher> dataList = new ArrayList<demandeafficher>();
        while (rs.next()){
                                demandeafficher Rec=new demandeafficher(rs.getString("ANCIEN_CHAMBRE"),rs.getString("NOU_CHAMBRE"),rs.getString("ETAT"),rs.getString("COMMENTAIRE"));
				dataList.add(Rec);
        }
        st.close();
        con.close();
        return dataList;
    }
    public void supprimerdem(HttpServletRequest request) throws ClassNotFoundException, SQLException{
         String NUMERO_CHAMBRE1 = request.getParameter("NUMERO_CHAMBRE1");
        String NUMERO_CHAMBRE2 = request.getParameter("NUMERO_CHAMBRE2");
        String etat = request.getParameter("ETAT");
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String req = "DELETE FROM DEMANDE WHERE (ANCIEN_CHAMBRE ='"+NUMERO_CHAMBRE1+"')and(NOU_CHAMBRE='"+NUMERO_CHAMBRE2+"')";
        st.executeUpdate(req); 
         Resident r = new Resident();
         if(etat.equals("0")){
            r.remplir(NUMERO_CHAMBRE2);
         }
        st.close();
        con.close();

    }
    
    
    public  void  remplir(String NUMERO_CHAMBRE2 )throws ClassNotFoundException, SQLException{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
         
        st = con.createStatement();
        String req="";
        
         req = "INSERT INTO CHAMBRE VALUES('"+NUMERO_CHAMBRE2+"')";
        
        
        st.executeUpdate(req);         
        st.close();
        con.close();
    }
      public  void accepte(HttpServletRequest request)throws ClassNotFoundException, SQLException{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String NUMERO_CHAMBRE1 = request.getParameter("NUMERO_CHAMBRE1");
        String NUMERO_CHAMBRE2 = request.getParameter("NUMERO_CHAMBRE2");
        String req="";
        
        req = "UPDATE DEMANDE SET ETAT='1'  where (ANCIEN_CHAMBRE='"+NUMERO_CHAMBRE1+"')";
        Resident r = new Resident();
        r.remplir(NUMERO_CHAMBRE1);
        r.CHANGERCHAMBRE(NUMERO_CHAMBRE2, NUMERO_CHAMBRE1);
        
        st.executeUpdate(req); 
        st.close();
        con.close();
        
    
     }
    
    
   public  void refuse(HttpServletRequest request)throws ClassNotFoundException, SQLException{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String NUMERO_CHAMBRE1 = request.getParameter("NUMERO_CHAMBRE1");
        String NUMERO_CHAMBRE2 = request.getParameter("NUMERO_CHAMBRE2");
        String req="";
        
        req = "UPDATE DEMANDE SET ETAT='2'  where (ANCIEN_CHAMBRE='"+NUMERO_CHAMBRE1+"')";
        Resident r = new Resident();
         r.remplir(NUMERO_CHAMBRE2);
        
        
        st.executeUpdate(req); 
        st.close();
        con.close();
        
    
     }
    
  /**public static void main(String[] args) throws ClassNotFoundException, SQLException{
         
        try{Resident r=new Resident();
         r.accepte("R141","C222");
         }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
      
  }**/
         
         
     
}



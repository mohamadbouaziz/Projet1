package Reclamation;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
public class Reclamation {
    Connection con;
    Statement st;
    ResultSet rs;
    private Object conn;
    private Object stmt;
    public Reclamation(){};
    
    public void ajouter(HttpServletRequest request)throws ClassNotFoundException, SQLException{
        
        String chambre=null;
        HttpSession session=request.getSession(false);
        if (session != null && session.getAttribute("adresse_email") != null) {
        String adresse_email=(String)session.getAttribute("adresse_email"); 
        Resident r=new Resident();
        chambre=r.chercher_chambre(adresse_email);
        }
        
        
        String TYPE=request.getParameter("TYPE");
        String COMMENTAIRE=request.getParameter("COMMENTAIRE");
        String ETAT="0";
        String Avis="";
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        
        if(TYPE.equals("")||(COMMENTAIRE.equals(""))){
            st.close();
            con.close();
        }
        else{
         String req = "INSERT INTO RECLAMATION VALUES('"+TYPE+"','"+chambre+"','"+COMMENTAIRE+"','"+ETAT+"','"+Avis+"')";
         st.executeUpdate(req);
         st.close();
        con.close();
        }
         
        st.close();
        con.close();
    }
    public void supprimer(HttpServletRequest request) throws ClassNotFoundException, SQLException{
         String NUMERO_CHAMBRE = request.getParameter("NUMERO_CHAMBRE");
        String TYPE = request.getParameter("TYPE");
        String COMMENTAIRE = request.getParameter("COMMENTAIRE");
        String ETAT = request.getParameter("ETAT");
       
        
        
    
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String req = "DELETE FROM RECLAMATION WHERE (NUMERO_CHAMBRE ='"+NUMERO_CHAMBRE+"')and(TYPE ='"+TYPE+"')and(COMMENTAIRE ='"+COMMENTAIRE+"')";
        st.executeUpdate(req); 
        st.close();
        con.close();

    }
    public List <Reclamationafficher> affiche()throws ClassNotFoundException, SQLException{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String req = "select * from RECLAMATION";
        rs=st.executeQuery(req);
        List <Reclamationafficher> dataList = new ArrayList<Reclamationafficher>();
        while (rs.next()){
				
                                Reclamationafficher Rec=new Reclamationafficher(rs.getString("NUMERO_CHAMBRE"),rs.getString("COMMENTAIRE"),rs.getString("TYPE"),rs.getString("ETAT"),rs.getString("AVIS"));
                               
				dataList.add(Rec);
        }
        st.close();
        con.close();
        return dataList;
    }
    
     
     public List <Reclamationafficher> afficheEtudient(String Adresse_Email)throws ClassNotFoundException, SQLException{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        Resident r=new Resident();
        String NUMERO_CHAMBRE = r.chercher_chambre(Adresse_Email);
        String req = "select * from RECLAMATION where NUMERO_CHAMBRE ='"+NUMERO_CHAMBRE+"'";
        
        rs=st.executeQuery(req);
        List <Reclamationafficher> dataList = new ArrayList<Reclamationafficher>();
        while (rs.next()){
				
                                Reclamationafficher Rec=new Reclamationafficher(rs.getString("NUMERO_CHAMBRE"),rs.getString("COMMENTAIRE"),rs.getString("TYPE"),rs.getString("ETAT"));
                               
				dataList.add(Rec);
        }
        st.close();
        con.close();
        return dataList;
    }
     public  void ChangeEtat(Reclamationafficher v)throws ClassNotFoundException, SQLException{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String COMMENTAIRE=v.COMMENTAIRE;
        String NUMERO_CHAMBRE=v.NUMERO_CHAMBRE;
        String TYPE=v.TYPE;
        String ETAT=v.ETAT;
        String req="";
        if(ETAT.equals("0")){
        req = "UPDATE RECLAMATION SET ETAT='1'  where (NUMERO_CHAMBRE='"+NUMERO_CHAMBRE+"')and(TYPE='"+TYPE+"')and(COMMENTAIRE='"+COMMENTAIRE+"')";
        
        
        }
        else{
        req = "UPDATE RECLAMATION SET ETAT='0' where (NUMERO_CHAMBRE='"+NUMERO_CHAMBRE+"')and(TYPE='"+TYPE+"')and(COMMENTAIRE='"+COMMENTAIRE+"')";
        }
        st.executeUpdate(req); 
        st.close();
        con.close();
        
    
     }
     public  void ajouterAvis(Reclamationafficher v)throws ClassNotFoundException, SQLException{
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        con = DriverManager.getConnection("jdbc:derby://localhost:1527/Réclamation", "bouaziz", "bouaziz");
        st = con.createStatement();
        String COMMENTAIRE=v.COMMENTAIRE;
        String NUMERO_CHAMBRE=v.NUMERO_CHAMBRE;
        String TYPE=v.TYPE;
        String AVIS=v.AVIS;
       
        
        String req = "UPDATE RECLAMATION SET AVIS='"+AVIS+"'  where (NUMERO_CHAMBRE='"+NUMERO_CHAMBRE+"')and(TYPE='"+TYPE+"')and(COMMENTAIRE='"+COMMENTAIRE+"')";
        
        
        
        st.executeUpdate(req); 
        st.close();
        con.close();
        
    
     }
     /**public static void main(String[] args) throws ClassNotFoundException, SQLException{
         
        Reclamationafficher v=new Reclamationafficher("R141","casse","Prises de courant","1","Hi");
         Reclamation r=new Reclamation();
         r.ajouterAvis(v);
         
     }**/}

       
        
    
    
    




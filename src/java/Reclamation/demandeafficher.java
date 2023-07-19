package Reclamation;


public class demandeafficher {
	protected String NUMERO_CHAMBRE1;
	protected String NUMERO_CHAMBRE2;
        protected String commentaire;
	
	protected String etat;
	public demandeafficher() {
            this.NUMERO_CHAMBRE1 ="0";
		this.NUMERO_CHAMBRE2= "0";
               
	}
	
	public demandeafficher(String NUMERO_CHAMBRE1, String NUMERO_CHAMBRE2,String etat) {
		this.NUMERO_CHAMBRE1 = NUMERO_CHAMBRE1;
		this.NUMERO_CHAMBRE2= NUMERO_CHAMBRE2;
                this.etat= etat;
		
	}
        public demandeafficher(String NUMERO_CHAMBRE1, String NUMERO_CHAMBRE2,String etat,String commentaire) {
		this.NUMERO_CHAMBRE1 = NUMERO_CHAMBRE1;
		this.NUMERO_CHAMBRE2= NUMERO_CHAMBRE2;
                this.etat= etat;
                 this.commentaire= commentaire;
		
	}
       

	

	
	public String getNUMERO_CHAMBRE1() {
		return NUMERO_CHAMBRE1;
	}
	public void setNUMERO_CHAMBRE1(String NUMERO_CHAMBRE) {
		this.NUMERO_CHAMBRE1 = NUMERO_CHAMBRE;
	}
	public String getNUMERO_CHAMBRE2() {
		return NUMERO_CHAMBRE2;
	}
	public void setNUMERO_CHAMBRE2(String NUMERO_CHAMBRE) {
		this.NUMERO_CHAMBRE2 = NUMERO_CHAMBRE;
	}
        public String getetat() {
		return etat;
	}
	public void setetat(String etat) {
		this.etat = etat;
	}
         public String getcommentaire() {
		return commentaire;
	}
	public void setcommentaire(String commentaire) {
		this.commentaire = commentaire;
	}
	
}
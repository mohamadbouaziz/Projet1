
package Reclamation;


public class Reclamationafficher {
	protected String NUMERO_CHAMBRE;
	protected String COMMENTAIRE;
	protected String TYPE;
        protected String ETAT;
        protected String AVIS;
	
	public Reclamationafficher() {
	}
	
	public Reclamationafficher(String NUMERO_CHAMBRE, String COMMENTAIRE, String TYPE,String ETAT) {
		this.NUMERO_CHAMBRE = NUMERO_CHAMBRE;
		this.COMMENTAIRE = COMMENTAIRE;
		this.TYPE = TYPE;
                this.ETAT=ETAT;
	}
        public Reclamationafficher(String NUMERO_CHAMBRE,String COMMENTAIRE,String TYPE,String ETAT,String Avis) {
		this.NUMERO_CHAMBRE = NUMERO_CHAMBRE;
		this.COMMENTAIRE = COMMENTAIRE;
		this.TYPE = TYPE;
                this.AVIS=Avis;
                this.ETAT=ETAT;
	}

	

	
	public String getNUMERO_CHAMBRE() {
		return NUMERO_CHAMBRE;
	}
	public void setNUMERO_CHAMBRE(String NUMERO_CHAMBRE) {
		this.NUMERO_CHAMBRE = NUMERO_CHAMBRE;
	}
	public String getCOMMENTAIRE() {
		return COMMENTAIRE;
	}
	public void setCOMMENTAIRE(String COMMENTAIRE) {
		this.COMMENTAIRE = COMMENTAIRE;
	}
	public String getTYPE() {
		return TYPE;
	}
	public void setTYPE(String TYPE) {
		this.TYPE = TYPE;
	}
        public String getETAT() {
		return ETAT;
	}
	public void setETAT(String ETAT) {
		this.ETAT = ETAT;
	}
        public String getAVIS() {
		return AVIS;
	}
	public void setAVIS(String AVIS) {
		this.AVIS = AVIS;
	}
}
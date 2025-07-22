// 1) Classe de base Personne avec encapsulation de l’attribut numéro de Sécu
public virtual class Personne {
    // privé : impossible d’y accéder directement hors de la classe
    private String numeroSecuriteSociale;
    // protégé : accessible dans les sous‑classes du même namespace
    protected String nom;
    // public : librement accessible
    public Integer age;

    // Constructeur
    public Personne(String nomInit, Integer ageInit, String numSS) {
        this.nom                       = nomInit;
        this.age                       = ageInit;
        this.numeroSecuriteSociale     = numSS;
    }

    // Getter public pour le SSN (pas de setter !)
    public String getNumeroSecuriteSociale() {
        return numeroSecuriteSociale;
    }
}

// Classe de base

public virtual class Vehicule {
    // Attribut protégé – toute sous-classe dans le même namespace y accède
    protected String couleur;
    
    // Constructeur
    public Vehicule(String couleurInitiale) {
        this.couleur = couleurInitiale;
    }
    
    // Démarre le moteur
    public void demarrerMoteur() {
        System.debug('Moteur démarré');
    }
    
    // Arrête le moteur
    public void arreterMoteur() {
        System.debug('Moteur arrêté ');
    }
}
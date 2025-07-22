// Sous-classe Voiture
public class Voiture extends Vehicule {
    // Nombre de portes spécifique
    private Integer nombreDePortes;
    
    public Voiture(String couleurInitiale, Integer portes) {
        super(couleurInitiale);
        this.nombreDePortes = portes;
    }
    
    // Méthode spécifique
    public void ouvrirCoffre() {
        System.debug('Ouverture du coffre de la voiture à ' 
                     + this.nombreDePortes + ' portes.');
    }
}
public class Piece {
    public String nom { get; private set; }
    private Piece(String nom) {
        this.nom = nom;
    }
    // Seule façon de créer une pièce :
    public static Piece create(String nom) {
        return new Piece(nom);
    }
}

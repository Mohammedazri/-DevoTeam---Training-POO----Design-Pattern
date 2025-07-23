public class Maison {
    // 1) Liste interne de pièces
    private List<Piece> pieces;

    // 2) Constructeur
    public Maison() {
        this.pieces = new List<Piece>();
    }

    // 3) Méthode d’agrégation : on utilise la factory Piece.create(...)
    public Piece ajouterPiece(String nom) {
        Piece p = Piece.create(nom);
        this.pieces.add(p);
        return p;
    }

    // 4) Getter en lecture seule
    public List<Piece> getPieces() {
        return this.pieces;
    }
}
// 1) Classe Article : unité de contenu
public class Article {
    // Propriétés en lecture seule depuis l'extérieur
    public String code  { get; private set; }
    public String label { get; private set; }

    // Constructeur : on initialise code et label
    public Article(String code, String label) {
        this.code  = code;
        this.label = label;
    }
    
}
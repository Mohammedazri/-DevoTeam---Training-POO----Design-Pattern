// 2) Classe Panier : agrège plusieurs Article
public class Panier {
    // Liste interne d'articles, accessible seulement en lecture
    public List<Article> articles { get; private set; }

    // Constructeur : on crée la liste vide
    public Panier() {
        this.articles = new List<Article>();
    }

    // Méthode d'agrégation : on ajoute un article
    public void ajouter(Article a) {
        articles.add(a);
    }

    // Méthode de présentation : on affiche le contenu du panier
    public void afficher() {
        System.debug('--- Contenu Panier ---');
        for (Article a : articles) {
            System.debug(a.code + ' : ' + a.label);
        }
    }
}
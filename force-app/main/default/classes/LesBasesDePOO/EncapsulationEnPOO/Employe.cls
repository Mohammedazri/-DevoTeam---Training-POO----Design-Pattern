// 2) Sous‑classe Employe qui hérite de Personne
public class Employe extends Personne {
    private String poste;

    public Employe(String nomInit, Integer ageInit, String numSS, String posteInit) {
        super(nomInit, ageInit, numSS);
        this.poste = posteInit;
    }

    // Méthode publique pour afficher les infos
    public void afficherInfos() {
        System.debug(
            'Nom : ' + nom +
            ', Age : ' + age +
            ', Poste : ' + poste +
            ', SSN : ' + getNumeroSecuriteSociale()
        );
    }
}
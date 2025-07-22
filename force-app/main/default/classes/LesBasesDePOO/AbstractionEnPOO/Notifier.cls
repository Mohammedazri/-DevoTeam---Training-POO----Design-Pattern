// 1. Contrat : toute classe “Notifier” doit savoir envoyer un message
public interface Notifier {
    // Méthode abstraite, pas d’implémentation ici
    void send(String message);
}
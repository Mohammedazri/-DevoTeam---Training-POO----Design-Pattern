// 2. Implémentation par e‑mail
public with sharing class EmailNotifier implements Notifier {
    // Ici, on définit comment envoyer un e‑mail
    public void send(String message) {
        System.debug(LoggingLevel.INFO, '✉️ Envoi d\'un e‑mail : ' + message);
    }
}
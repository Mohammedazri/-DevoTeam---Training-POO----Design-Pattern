// 3. Implémentation par SMS
public with sharing class SmsNotifier implements Notifier {
    // Ici, on définit comment envoyer un SMS
    public void send(String message) {
        System.debug(LoggingLevel.INFO, '📱 Envoi d\'un SMS : ' + message);
    }
}
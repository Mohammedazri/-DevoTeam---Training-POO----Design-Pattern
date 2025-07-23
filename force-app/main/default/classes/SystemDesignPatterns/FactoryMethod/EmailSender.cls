public with sharing class EmailSender implements IMessageSender {
    public void sendMessage(String recipient, String message) {
        // ici vous feriez Messaging.sendEmail(…) en production
        System.debug('Envoi d’un e‑mail à ' + recipient + ' : ' + message);
    }
}

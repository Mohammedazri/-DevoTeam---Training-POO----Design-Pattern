public with sharing class SmsSender implements IMessageSender {
    public void sendMessage(String recipient, String message) {
        // ici vous feriez un callout vers un fournisseur SMS
        System.debug('Envoi d’un SMS à ' + recipient + ' : ' + message);
    }
}

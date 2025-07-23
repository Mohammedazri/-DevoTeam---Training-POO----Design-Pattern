public with sharing class SlackSender implements IMessageSender {
    public void sendMessage(String recipient, String message) {
        // ici vous feriez un callout vers l’API Slack
        System.debug('Envoi d’un message Slack à ' + recipient + ' : ' + message);
    }
}

public with sharing class PushNotificationSender implements IMessageSender {
    public void sendMessage(String recipient, String message) {
        // ici vous feriez un callout vers un service de push
        System.debug('Envoi d’une Push Notification à ' + recipient + ' : ' + message);
    }
}

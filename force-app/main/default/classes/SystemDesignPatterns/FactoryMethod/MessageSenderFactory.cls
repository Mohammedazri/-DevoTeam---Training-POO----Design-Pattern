public with sharing class MessageSenderFactory {
    /**
     * Renvoie l'implémentation de IMessageSender
     * selon le type demandé.
     * Types : "EMAIL", "SMS", "PUSH", "SLACK"
     */
    public static IMessageSender getSender(String type) {
        switch on (type?.toUpperCase()) {
            when 'EMAIL' {
                return new EmailSender();
            }
            when 'SMS' {
                return new SmsSender();
            }
            when 'PUSH' {
                return new PushNotificationSender();
            }
            when 'SLACK' {
                return new SlackSender();
            }
            when else {
                // Par défaut on retourne un EmailSender
                return new EmailSender();
            }
        }
    }
}

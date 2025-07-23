public with sharing class NotificationService {
    /**
     * Envoie une notification sans connaître
     * la classe concrète du sender.
     *
     * @param type  "EMAIL" | "SMS" | "PUSH" | "SLACK"
     * @param to    destinataire (mail, numéro, canal…)
     * @param text  contenu du message
     */
    public static void notify(String type, String to, String text) {
        IMessageSender sender = MessageSenderFactory.getSender(type);
        sender.sendMessage(to, text);
    }
}

// 4. Service de notification : utilise l’interface sans connaître les détails
public with sharing class NotificationService {
    /**
     * Méthode statique qui prend un Notifier (abstraction)
     * et un message, puis délègue l’envoi.
     */
    public static void notifyUser(Notifier notifier, String message) {
        notifier.send(message);
    }
}
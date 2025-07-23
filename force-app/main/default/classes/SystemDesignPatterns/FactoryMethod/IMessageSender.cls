public interface IMessageSender {
    /**
     * Envoie un message au destinataire donné.
     *
     * @param recipient  adresse e‑mail, numéro de téléphone, canal Slack…
     * @param message    texte du message
     */
    void sendMessage(String recipient, String message);
}

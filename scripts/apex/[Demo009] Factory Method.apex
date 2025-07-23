// ——— Démo Factory Method : NotificationService ———
System.debug('=== Début de la démo Factory Method ===');

// On teste chaque type de sender supporté
List<String> types = new List<String>{ 'EMAIL', 'SMS', 'PUSH', 'SLACK', 'UNKNOWN' };

for (String t : types) {
    //System.debug('→ Type demandé : ' + t);
    // envoi de la notification
    NotificationService.notify(t,
    (t == 'SMS' ? '+33600102030' 
         : t == 'EMAIL' ? 'user@example.com'
         : t == 'SLACK' ? '#general'
         : 'defaultRecipient'),
        'Bonjour via ' + t
    );
}

System.debug('=== Fin de la démo Factory Method ===');






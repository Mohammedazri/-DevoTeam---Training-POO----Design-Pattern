// ——— Démo ———
System.debug('--- Début démo Notification ---');

// 1) Notification par e‑mail
Notifier email = new EmailNotifier();
NotificationService.notifyUser(email, 'Votre rapport est prêt !');

// 2) Notification par SMS
Notifier sms = new SmsNotifier();
NotificationService.notifyUser(sms, 'Vérifiez votre téléphone.');

System.debug('--- Fin démo Notification ---');



23:53:33.132 (144834415)|USER_DEBUG|[2]|DEBUG|--- Début démo Notification ---
23:53:33.132 (167154532)|USER_DEBUG|[5]|INFO|✉️ Envoi d'un e‑mail : Votre rapport est prêt !
23:53:33.132 (178419139)|USER_DEBUG|[5]|INFO|📱 Envoi d'un SMS : Vérifiez votre téléphone.
23:53:33.132 (178501158)|USER_DEBUG|[12]|DEBUG|--- Fin démo Notification ---
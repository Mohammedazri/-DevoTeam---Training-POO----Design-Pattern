public with sharing class NotificationServiceUgly {
    /**
     * Méthode unique qui fait tout :
     *   - construit et envoie un email
     *   - prépare un HTTP pour un SMS
     *   - prépare un HTTP pour une Push notif
     *   - prépare un HTTP pour Slack
     * Tout est dupliqué et entremêlé ici.
     */
    public static void send(String type, String to, String text) {
        if (type == 'EMAIL') {
            // envoi d'email inline
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            mail.setToAddresses(new String[]{ to });
            mail.setSubject('Notification');
            mail.setPlainTextBody(text);
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{ mail });
        }
        else if (type == 'SMS') {
            // SMS via callout HTTP inline
            HttpRequest req1 = new HttpRequest();
            req1.setEndpoint('https://sms.api.provider/send?to=' + EncodingUtil.urlEncode(to,'UTF-8') + '&msg=' + EncodingUtil.urlEncode(text,'UTF-8'));
            req1.setMethod('GET');
            Http http1 = new Http();
            HttpResponse res1 = http1.send(req1);
            System.debug('SMS response: ' + res1.getBody());
        }
        else if (type == 'PUSH') {
            // Push notif via un autre callout inline
            HttpRequest req2 = new HttpRequest();
            req2.setEndpoint('https://push.api.provider/notify');
            req2.setMethod('POST');
            req2.setHeader('Content-Type','application/json');
            req2.setBody('{"to":"' + to + '","message":"' + text + '"}');
            Http http2 = new Http();
            HttpResponse res2 = http2.send(req2);
            System.debug('Push response: ' + res2.getStatus());
        }
        else if (type == 'SLACK') {
            // Slack via callout inline
            HttpRequest req3 = new HttpRequest();
            req3.setEndpoint('https://slack.com/api/chat.postMessage');
            req3.setMethod('POST');
            req3.setHeader('Authorization','Bearer xoxb-your-token');
            req3.setHeader('Content-Type','application/json');
            req3.setBody('{"channel":"'+ to +'","text":"' + text + '"}');
            Http http3 = new Http();
            HttpResponse res3 = http3.send(req3);
            System.debug('Slack response: ' + res3.getStatus());
        }
        else {
            // comportement par défaut : on renvoie juste un debug
            System.debug('Type non reconnu ('+ type +') pour ' + to + ' : ' + text);
        }
    }
}

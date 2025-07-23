// force-app/main/default/classes/EmailPriceAlert.cls
public with sharing class EmailPriceAlert implements IPriceAlert {
    public void onPriceChange(String productId, Decimal newPrice) {
        // ici en prod vous feriez un Messaging.sendEmail
        System.debug('📧 Email Alert – produit ' + productId 
                     + ' nouveau prix = ' + newPrice);
    }
}

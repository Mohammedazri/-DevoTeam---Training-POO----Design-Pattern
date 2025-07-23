// force-app/main/default/classes/SmsPriceAlert.cls
public with sharing class SmsPriceAlert implements IPriceAlert {
    public void onPriceChange(String productId, Decimal newPrice) {
        // ici en prod un callout vers votre fournisseur SMS
        System.debug('📱 SMS Alert – produit ' + productId 
                     + ' nouveau prix = ' + newPrice);
    }
}

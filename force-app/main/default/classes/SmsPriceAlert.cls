

public with sharing class SmsPriceAlert {
    public static void send(String productId, Decimal newPrice) {
        System.debug('📱 [SmsPriceAlert] Sending SMS for product ' 
                     + productId + ' at price ' + newPrice);
        // … your real SMS logic here …
    }
}
public with sharing class EmailPriceAlert {
    public static void send(String productId, Decimal newPrice) {
        System.debug('📧 [EmailPriceAlert] Sending E‑mail for product ' 
                     + productId + ' at price ' + newPrice);
        // … your real email logic here …
    }
}



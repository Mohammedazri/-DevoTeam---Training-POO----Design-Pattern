public with sharing class PriceChangePublisher {
    /**
     * Publishes a PriceChange__e event.
     */
    public static void publish(Id productId, Decimal newPrice) {
        System.debug('📤 [Publisher] Preparing to publish PriceChange__e: product=' 
                     + productId + ', newPrice=' + newPrice);
        PriceChange__e evt = new PriceChange__e(
            ProductId__c = (String)productId,
            NewPrice__c  = newPrice
        );
        EventBus.publish(evt);
        System.debug('✅ [Publisher] PriceChange__e published');
    }
}

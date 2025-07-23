// force-app/main/default/classes/PriceChangePublisher.cls
public with sharing class PriceChangePublisher {
    public static void publish(Id productId, Decimal newPrice) {
        PriceChange__e evt = new PriceChange__e(
            ProductId__c = (String)productId,
            NewPrice__c  = newPrice
        );
        // insertion de l’événement
        EventBus.publish(evt);
    }
}

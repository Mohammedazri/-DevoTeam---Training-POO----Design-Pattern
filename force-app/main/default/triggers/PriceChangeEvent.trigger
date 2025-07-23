trigger PriceChangeEventTrigger on PriceChange__e (after insert) {
    System.debug('--- BEGIN PriceChangeEventTrigger ---');
    for (PriceChange__e evt : Trigger.new) {
        System.debug('🛎 [Trigger] Received PriceChange__e → product=' 
                     + evt.ProductId__c + ', newPrice=' + evt.NewPrice__c);
        EmailPriceAlert.send(evt.ProductId__c, evt.NewPrice__c);
        SmsPriceAlert.send(evt.ProductId__c, evt.NewPrice__c);
    }
    System.debug('--- END PriceChangeEventTrigger ---');
}

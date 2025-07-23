// force-app/main/default/triggers/PriceChangeEvent.trigger
trigger PriceChangeEvent on PriceChange__e (after insert) {
    // construisez la liste d’observers que vous voulez notifier
    List<IPriceAlert> observers = new List<IPriceAlert>{
        new EmailPriceAlert(),
        new SmsPriceAlert()
        // vous pouvez en ajouter d’autres à volonté
    };
    
    // pour chaque événement publié
    for (PriceChange__e evt : Trigger.new) {
        for (IPriceAlert obs : observers) {
            obs.onPriceChange(
                evt.ProductId__c,
                evt.NewPrice__c
            );
        }
    }
}

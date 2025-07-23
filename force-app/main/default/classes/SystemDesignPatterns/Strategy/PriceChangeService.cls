public with sharing class PriceChangeService {

    /**
     * Parcourt deux listes de PricebookEntry (old vs new), publie un event
     * pour chaque record dont le prix a changé.
     */
    public static void checkAndPublish(
        List<PricebookEntry> oldList,
        List<PricebookEntry> newList
    ) {
        System.debug('▶️ [Service] checkAndPublish invoked');
        Map<Id, PricebookEntry> oldMap = new Map<Id, PricebookEntry>(oldList);
        System.debug('   • oldMap contains ' + oldMap.size() + ' entries');
        for (PricebookEntry pbeNew : newList) {
            PricebookEntry pbeOld = oldMap.get(pbeNew.Id);
            if (pbeOld == null) {
                System.debug('   – skipping ' + pbeNew.Id + ' (no old version)');
                continue;
            }
            System.debug('   • Comparing record ' + pbeNew.Id 
                         + ' oldPrice=' + pbeOld.UnitPrice 
                         + ' newPrice=' + pbeNew.UnitPrice);
            if (pbeNew.UnitPrice != pbeOld.UnitPrice) {
                System.debug('   ✅ Price changed, publishing event');
                PriceChangePublisher.publish(pbeNew.Product2Id, pbeNew.UnitPrice);
            } else {
                System.debug('   – Price unchanged, no event');
            }
        }
        System.debug('◀️ [Service] checkAndPublish complete');
    }
}

public with sharing class PriceChangeService {
  
  /**
   * Compare la liste d'anciens et de nouveaux PricebookEntry
   * et publie un PriceChange__e pour chaque entrée dont le prix a changé.
   *
   * @param oldList  liste d'anciennes versions de PBE
   * @param newList  liste des nouvelles versions de PBE
   */
  public static void checkAndPublish(List<PricebookEntry> oldList,
                                     List<PricebookEntry> newList) {
    // construire rapidement une map des anciens prix
    Map<Id, PricebookEntry> oldMap = new Map<Id, PricebookEntry>(oldList);
    
    for (PricebookEntry pbeNew : newList) {
      PricebookEntry pbeOld = oldMap.get(pbeNew.Id);
      if (pbeOld != null && pbeNew.UnitPrice != pbeOld.UnitPrice) {
        // prix modifié → publier l’événement
        PriceChangePublisher.publish(pbeNew.Product2Id, pbeNew.UnitPrice);
      }
    }
  }
}

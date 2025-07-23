// —— Demo sans trigger, en appel direct du service ——

// 1) Récupérer une PricebookEntry existante
PricebookEntry pbe = [
  SELECT Id, UnitPrice, Product2Id
  FROM PricebookEntry
  WHERE Pricebook2.IsStandard = true
    AND IsActive = true
  LIMIT 1
];

// 2) Capturer l’“ancienne” version avant update
List<PricebookEntry> oldList = new List<PricebookEntry>{ pbe.clone(true) };

// 3) Modifier et mettre à jour le prix
Decimal newPrice = pbe.UnitPrice * 1.10;
pbe.UnitPrice = newPrice;
update pbe;

// 4) Charger la “nouvelle” version après update
List<PricebookEntry> newList = [
  SELECT Id, UnitPrice, Product2Id
  FROM PricebookEntry
  WHERE Id = :pbe.Id
];

// 5) Appeler le service qui compare et publie les events
System.debug('📋 Avant/après service PriceChangeService');
PriceChangeService.checkAndPublish(oldList, newList);

// 6) (Optionnel) Invoquer directement les observers pour voir tout de suite
EmailPriceAlert.send(pbe.Product2Id, newPrice);
SmsPriceAlert.send(pbe.Product2Id, newPrice);

System.debug('=== Fin de la démo PriceChangeService ===');

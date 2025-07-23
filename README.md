# Formation POO & Design Patterns en Apex

Ce projet a pour but de fournir une formation complète sur les concepts de la Programmation Orientée Objet (POO) et les Design Patterns en utilisant le langage Apex de Salesforce. Chaque concept est illustré par un exemple de code et une démonstration.

## Concepts POO de base

### 1. Héritage

L'héritage permet à une classe d'hériter des propriétés et des méthodes d'une autre classe.

**Exemple de code :**
```apex
// Fichier : [Demo001] HeritageEnOOP.apex

// Instanciation d’une Voiture
Voiture maVoiture = new Voiture('rouge', 4);
maVoiture.demarrerMoteur();
maVoiture.ouvrirCoffre();
maVoiture.arreterMoteur();

// Instanciation d’un Avion
Avion monAvion = new Avion('blanc');
monAvion.demarrerMoteur();
monAvion.arreterMoteur();
```

### 2. Polymorphisme

Le polymorphisme permet à un objet de prendre plusieurs formes. En Apex, cela est souvent réalisé grâce à des méthodes virtuelles et à l'override.

**Exemple de code :**
```apex
// Fichier : [Demo002] PolymorphismeEnOOP.apex

List<Shape> shapes = new List<Shape>{
    new Circle(5),
    new Square(4),
    new Triangle(5, 2)
};

for (Shape s : shapes) {
    String typeName;
    if (s instanceof Circle)      typeName = 'Circle';
    else if (s instanceof Square) typeName = 'Square';
    else                           typeName = 'Triangle';
    System.debug('Area of ' + typeName + ' = ' + s.calculateArea());
}
```

### 3. Encapsulation

L'encapsulation consiste à restreindre l'accès à certains composants d'un objet et à ne permettre leur modification que par des méthodes spécifiques.

**Exemple de code :**
```apex
// Fichier : [Demo003] EncapsulationEnOOP.apex

// Création d’un employé
Employe e = new Employe(
    'Dupont',
    30,
    '123‑45‑6789',
    'Développeur'
);

// Accès direct autorisé à age (public) et nom (protected, car dans le même namespace)
System.debug('Age (public) : ' + e.age);

// Accès au SSN uniquement via le getter
String ssn = e.getNumeroSecuriteSociale();
System.debug('SSN via getter : ' + ssn);

// Affiche toutes les infos via la méthode de la sous‑classe
e.afficherInfos();
```

### 4. Abstraction

L'abstraction consiste à masquer les détails complexes de l'implémentation et à n'exposer que les fonctionnalités essentielles.

**Exemple de code :**
```apex
// Fichier : [Demo004] AbstractionEnOOP.apex

System.debug('--- Début démo Notification ---');

// 1) Notification par e‑mail
Notifier email = new EmailNotifier();
NotificationService.notifyUser(email, 'Votre rapport est prêt !');

// 2) Notification par SMS
Notifier sms = new SmsNotifier();
NotificationService.notifyUser(sms, 'Vérifiez votre téléphone.');

System.debug('--- Fin démo Notification ---');
```

### 5. Agrégation

L'agrégation est une relation "a un" entre deux classes, où une classe contient une référence à une autre classe.

**Exemple de code :**
```apex
// Fichier : [Demo005] Agrégation en POO.apex

// Création d'articles indépendants
Article stylo  = new Article('A001', 'Stylo');
Article cahier = new Article('A002', 'Cahier');

// Deux paniers partageant éventuellement le même article
Panier panier1 = new Panier();
panier1.ajouter(stylo);
panier1.ajouter(cahier);

Panier panier2 = new Panier();
panier2.ajouter(cahier);

// Affichage
panier1.afficher();
panier2.afficher();
```

### 6. Composition

La composition est une forme plus forte d'agrégation où les objets contenus n'ont pas d'existence indépendante.

**Exemple de code :**
```apex
// Fichier : [Demo006] Composition en POO.apex

Maison m = new Maison();
m.ajouterPiece('Salon');
m.ajouterPiece('Cuisine');

for (Piece p : m.getPieces()) {
    System.debug('Pièce : ' + p.nom);
}
```

### 7. Implémentation Multiple

Apex ne supporte pas l'héritage multiple de classes, mais une classe peut implémenter plusieurs interfaces.

**Exemple de code :**
```apex
// Fichier : [Demo007] Implémentation Multiple.apex

System.debug('=== Démo : Imprimable & Exportable ===');

// Instanciation d’un Document
Document doc = new Document();

// 1) Appel direct des méthodes
System.debug('→ Appel direct :');
doc.imprimer();
doc.exporter();

// 2) Via le service (découplage sur l’interface)
System.debug('→ Via DocumentService :');
DocumentService.traiterImpression(doc);
DocumentService.traiterExport(doc);

System.debug('=== Fin de la démo ===');
```

## Design Patterns

### 1. Singleton

Le pattern Singleton garantit qu'une classe n'a qu'une seule instance et fournit un point d'accès global à cette instance.

**Exemple de code :**
```apex
// Fichier : [Demo008] Singleton.apex

System.debug('=== Début du démo WSLogger Singleton ===');

List<String> testIds = new List<String>{
    '001xx000003DGXnAAO',
    'BAD_ID0001',
    '003xx000004XYZnAAO',
    'BAD_ID002'
};

for (String recId : testIds) {
    // Client 1
    try {
        String result1 = new SimpleWebServiceClient_001().fetchData(recId);
    } catch (Exception ex) {
        WSLogger.recordLogAsync(
            'SimpleWebServiceClient_001.fetchData',
            ex.getMessage(),
            500
        );
    }

    // Client 2
    try {
        String result2 = new SimpleWebServiceClient_002().fetchData(recId);
    } catch (Exception ex) {
        WSLogger.recordLogAsync(
            'SimpleWebServiceClient_002.fetchData',
            ex.getMessage(),
            501
        );
    }

    // Client N
    try {
        String resultN = new SimpleWebServiceClient_00N().fetchData(recId);
    } catch (Exception ex) {
        WSLogger.recordLogAsync(
            'SimpleWebServiceClient_00N.fetchData',
            ex.getMessage(),
            502
        );
    }
}

System.debug('=== Toutes les requêtes fetchData ont été exécutées ===');
```

### 2. Factory Method

Le pattern Factory Method fournit une interface pour créer des objets dans une superclasse, mais permet aux sous-classes de modifier le type d'objets qui seront créés.

**Exemple de code :**
```apex
// Fichier : [Demo009] Factory Method.apex

System.debug('=== Début de la démo Factory Method ===');

// On teste chaque type de sender supporté
List<String> types = new List<String>{ 'EMAIL', 'SMS', 'PUSH', 'SLACK', 'UNKNOWN' };

for (String t : types) {
    NotificationService.notify(t,
    (t == 'SMS' ? '+33600102030' 
         : t == 'EMAIL' ? 'user@example.com'
         : t == 'SLACK' ? '#general'
         : 'defaultRecipient'),
        'Bonjour via ' + t
    );
}

System.debug('=== Fin de la démo Factory Method ===');
```

### 3. Observer

Le pattern Observer est un modèle de conception comportemental qui permet à un objet, appelé le sujet, de notifier une liste d'objets dépendants, appelés observateurs, de tout changement d'état.

**Exemple de code :**
```apex
// Fichier : [Demo010] Observer.apex

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
```

### 4. Strategy

Le pattern Strategy est un modèle de conception comportemental qui permet de définir une famille d'algorithmes, de les encapsuler et de les rendre interchangeables.

**Exemple de code :**
```apex
// Fichier : [Demo011] Strategy‐via‐Custom‐Metadata.apex

// Les clés à tester
List<String> keys = new List<String>{ 'Standard', 'Express', 'Free200', 'Unknown' };

for (String key : keys) {
    try {
        Decimal fee = ShippingService.calculate(key, 150);
        System.debug(
          '▶️ [' + key + '] Shipping for €150 → ' + fee
        );
    } catch (Exception ex) {
        System.debug(
          '❌ [' + key + '] Erreur : ' + ex.getMessage()
        );
    }
}
```

### 5. Decorator

Le pattern Decorator est un modèle de conception structurel qui permet d'ajouter dynamiquement de nouvelles fonctionnalités à des objets sans modifier leur classe.

**Exemple de code :**
```apex
// Fichier : [Demo012] Decorator .apex

ReportGenerator.demo();
```

---

Ce projet a été créé par [DevoTeam].
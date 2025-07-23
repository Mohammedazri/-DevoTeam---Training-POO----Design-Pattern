# Guide de Formation : POO et Design Patterns en Apex

Bienvenue dans ce projet d'apprentissage ! L'objectif est de vous guider à travers les concepts clés de la programmation orientée objet et les design patterns essentiels pour écrire du code Apex de haute qualité.

Chaque sujet est organisé avec une brève Définition et des liens directs vers le code source et les scripts de démonstration pour une exploration facile.

---

## Partie 1 : Les Bases de la Programmation Orientée Objet (POO)

*Les quatre piliers sur lesquels repose tout code orienté objet bien structuré.*

- **1. L'Héritage**
  - **Définition :** Permet à une classe d'en hériter les propriétés et méthodes d'une autre. Utile pour réutiliser du code et créer des hiérarchies logiques (une `Voiture` est un `Vehicule`).
  - **Code Source :** `force-app/main/default/classes/LesBasesDePOO/HeritageEnPOO`
  - **Démonstration :** `scripts/apex/[Demo001] HeritageEnOOP.apex`

- **2. Le Polymorphisme**
  - **Définition :** Permet de traiter des objets de types différents de manière uniforme. On peut, par exemple, calculer l'aire d'un `Cercle` ou d'un `Carré` en utilisant la même méthode.
  - **Code Source :** `force-app/main/default/classes/LesBasesDePOO/PolymorphismeEnPOO`
  - **Démonstration :** `scripts/apex/[Demo002] PolymorphismeEnOOP.apex`

- **3. L'Encapsulation**
  - **Définition :** Protège les données d'un objet en ne les exposant qu'à travers des méthodes publiques. Cela garantit que l'objet contrôle son propre état.
  - **Code Source :** `force-app/main/default/classes/LesBasesDePOO/EncapsulationEnPOO`
  - **Démonstration :** `scripts/apex/[Demo003] EncapsulationEnOOP.apex`

- **4. L'Abstraction**
  - **Définition :** Masque la complexité interne pour n'exposer que les fonctionnalités nécessaires. Le code qui utilise l'objet n'a pas besoin de savoir *comment* il fonctionne, juste *ce qu'il fait*.
  - **Code Source :** `force-app/main/default/classes/LesBasesDePOO/AbstractionEnPOO`
  - **Démonstration :** `scripts/apex/[Demo004] AbstractionEnOOP.apex`

---

## Partie 2 : Concepts Avancés et Relations entre Objets

*Comment les objets interagissent et comment définir des contrats de code clairs.*

- **5. L'Agrégation & La Composition**
  - **Définition :** Deux manières de construire des objets complexes à partir d'objets plus simples. L'agrégation est une relation souple (un `Panier` contient des `Articles`), la composition est une relation forte (une `Maison` est faite de `Pieces`).
  - **Code Source :** `force-app/main/default/classes/ConceptAvancesPOO/`
  - **Démonstrations :** `scripts/apex/[Demo005]` et `[Demo006]`

- **6. Les Interfaces (Implémentation Multiple)**
  - **Définition :** Définit un "contrat" qu'une classe doit respecter. Une classe peut implémenter plusieurs interfaces, ce qui lui permet d'avoir plusieurs "casquettes" (ex: un `Document` est à la fois `Imprimable` et `Exportable`).
  - **Code Source :** `force-app/main/default/classes/ConceptAvancesPOO/ContratEtHeritageMultibleEnPOO`
  - **Démonstration :** `scripts/apex/[Demo007] Implémentation Multiple.apex`

---

## Partie 3 : Les Design Patterns Essentiels

*Solutions éprouvées aux problèmes de conception courants pour un code flexible et maintenable.*

- **7. Singleton**
  - **Définition :** Garantit qu'il n'existe qu'une seule et unique instance d'une classe. Parfait pour gérer des services partagés comme un logger.
  - **Code Source :** `force-app/main/default/classes/SystemDesignPatterns/Singleton`
  - **Démonstration :** `scripts/apex/[Demo008] Singleton.apex`

- **8. Factory Method**
  - **Définition :** Délègue la création d'objets à une classe "usine" (Factory). Le code client demande un objet sans avoir à connaître les détails de sa création.
  - **Code Source :** `force-app/main/default/classes/SystemDesignPatterns/FactoryMethod`
  - **Démonstration :** `scripts/apex/[Demo009] Factory Method.apex`

- **9. Observer**
  - **Définition :** Permet à des objets de "s'abonner" aux changements d'un autre objet sans y être directement liés. Idéal pour des notifications (ex: alerter quand un prix change).
  - **Code Source :** `force-app/main/default/classes/SystemDesignPatterns/Observer`
  - **Démonstration :** `scripts/apex/[Demo010] Observer.apex`

- **10. Strategy**
  - **Définition :** Rend des algorithmes interchangeables. Permet de changer de comportement à la volée (ex: choisir une méthode de calcul de frais de port).
  - **Code Source :** `force-app/main/default/classes/SystemDesignPatterns/Strategy`
  - **Démonstration :** `scripts/apex/[Demo011] Strategy‐via‐Custom‐Metadata.apex`

- **11. Decorator**
  - **Définition :** Ajoute de nouvelles fonctionnalités à un objet de manière dynamique, comme si on l'enveloppait dans des couches successives.
  - **Code Source :** `force-app/main/default/classes/SystemDesignPatterns/Décorateur`
  - **Démonstration :** `scripts/apex/[Demo012] Decorator .apex`

---

Fromation créé par **@Mohammed AZRI**.
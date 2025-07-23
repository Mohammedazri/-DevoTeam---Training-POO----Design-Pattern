
# Guide Expert : POO et Design Patterns en Apex

Bienvenue dans ce référentiel de formation avancée. L'objectif est de transformer votre compréhension de la programmation en Apex en une véritable expertise, en maîtrisant les concepts architecturaux qui sous-tendent un code propre, maintenable et évolutif.

Chaque sujet est présenté avec une explication approfondie et des liens directs vers le code source et les scripts de démonstration.

---

## Partie 1 : Les Piliers de la Programmation Orientée Objet (POO)

*Cette section explore les quatre concepts fondamentaux qui permettent de modéliser des systèmes complexes de manière intuitive et robuste.*

- **1. L'Héritage**
  - **Définition :** L'héritage est un mécanisme qui modélise une relation de type **"EST UN(E)"**. Il permet à une classe (la sous-classe) de recevoir les propriétés et méthodes d'une autre (la super-classe), favorisant ainsi la réutilisation du code et la création de hiérarchies logiques.
  - **[Code Source](force-app/main/default/classes/LesBasesDePOO/HeritageEnPOO)**
  - **[Démonstration](scripts/apex/[Demo001]%20HeritageEnOOP.apex)**

- **2. Le Polymorphisme**
  - **Définition :** Signifiant "plusieurs formes", le polymorphisme permet de traiter des objets de types différents via une interface commune. Il découple le code client des implémentations spécifiques, ce qui le rend incroyablement flexible et extensible.
  - **[Code Source](force-app/main/default/classes/LesBasesDePOO/PolymorphismeEnPOO)**
  - **[Démonstration](scripts/apex/[Demo002]%20PolymorphismeEnOOP.apex)**

- **3. L'Encapsulation**
  - **Définition :** Ce principe consiste à lier les données et les méthodes qui les manipulent au sein d'un objet, tout en protégeant son état interne. L'objet agit comme un gardien de ses propres données, n'autorisant leur modification qu'à travers des points d'accès contrôlés (méthodes publiques).
  - **[Code Source](force-app/main/default/classes/LesBasesDePOO/EncapsulationEnPOO)**
  - **[Démonstration](scripts/apex/[Demo003]%20EncapsulationEnOOP.apex)**

- **4. L'Abstraction**
  - **Définition :** L'abstraction vise à masquer la complexité de l'implémentation pour n'exposer que les fonctionnalités essentielles. Elle se concentre sur ce qu'un objet *fait*, plutôt que sur *comment* il le fait, simplifiant ainsi son utilisation.
  - **[Code Source](force-app/main/default/classes/LesBasesDePOO/AbstractionEnPOO)**
  - **[Démonstration](scripts/apex/[Demo004]%20AbstractionEnOOP.apex)**

---

## Partie 2 : Concepts Avancés et Relations entre Objets

*Ici, nous allons plus loin en explorant comment les objets peuvent être composés et comment ils peuvent promettre certaines fonctionnalités grâce aux interfaces.*

- **5. L'Agrégation & La Composition**
  - **Définition :** Ces deux concepts modélisent des relations de type **"A UN(E)"**. L'agrégation est une relation où les objets ont des cycles de vie indépendants (un `Panier` et ses `Articles`), tandis que la composition implique un cycle de vie dépendant (une `Maison` et ses `Pieces`).
  - **[Code Source](force-app/main/default/classes/ConceptAvancesPOO/)**
  - **Démonstrations :** **[Agrégation](scripts/apex/[Demo005]%20Agrégation%20en%20POO.apex)** et **[Composition](scripts/apex/[Demo006]%20Composition%20en%20POO.apex)**

- **6. Les Interfaces (Implémentation Multiple)**
  - **Définition :** Une interface est un contrat pur qui garantit qu'une classe possède certaines capacités. En implémentant plusieurs interfaces, une classe peut "porter plusieurs casquettes", ce qui permet une grande flexibilité architecturale.
  - **[Code Source](force-app/main/default/classes/ConceptAvancesPOO/ContratEtHeritageMultibleEnPOO)**
  - **[Démonstration](scripts/apex/[Demo007]%20Implémentation%20Multiple.apex)**

---

## Partie 3 : Les Design Patterns Essentiels

*Cette section couvre des solutions architecturales éprouvées qui résolvent des problèmes de conception récurrents de manière élégante et efficace.*

- **7. Singleton**
  - **Définition :** Un pattern de création qui assure qu'une classe n'a qu'une seule et unique instance et fournit un point d'accès global à celle-ci. Idéal pour les services partagés comme les loggers ou les gestionnaires de cache.
  - **[Code Source](force-app/main/default/classes/SystemDesignPatterns/Singleton)**
  - **[Démonstration](scripts/apex/[Demo008]%20Singleton.apex)**

- **8. Factory Method**
  - **Définition :** Un pattern de création qui délègue la logique d'instanciation à une classe "usine". Le code client a besoin d'un objet, mais c'est l'usine qui décide quelle implémentation concrète fournir, ce qui découple le client des détails de la création.
  - **[Code Source](force-app/main/default/classes/SystemDesignPatterns/FactoryMethod)**
  - **[Démonstration](scripts/apex/[Demo009]%20Factory%20Method.apex)**

- **9. Observer**
  - **Définition :** Un pattern de comportement qui crée un mécanisme de souscription. Un objet "sujet" notifie tous ses "observateurs" abonnés lorsqu'un événement se produit, sans avoir besoin de les connaître directement. Parfait pour des architectures événementielles et asynchrones.
  - **[Code Source](force-app/main/default/classes/SystemDesignPatterns/Observer)**
  - **[Démonstration](scripts/apex/[Demo010]%20Observer.apex)**

- **10. Strategy**
  - **Définition :** Un pattern de comportement qui encapsule des algorithmes dans des objets distincts et les rend interchangeables. Il permet de modifier le comportement d'un objet à l'exécution sans changer sa structure.
  - **[Code Source](force-app/main/default/classes/SystemDesignPatterns/Strategy)**
  - **[Démonstration](scripts/apex/[Demo011]%20Strategy‐via‐Custom‐Metadata.apex)**

- **11. Decorator**
  - **Définition :** Un pattern structurel qui permet d'ajouter dynamiquement de nouvelles responsabilités à un objet en l'enveloppant dans des "décorateurs". Chaque décorateur ajoute une fonctionnalité tout en conservant la même interface.
  - **[Code Source](force-app/main/default/classes/SystemDesignPatterns/Décorateur)**
  - **[Démonstration](scripts/apex/[Demo012]%20Decorator%20.apex)**

---

Projet créé par **@Mohammed AZRI**.

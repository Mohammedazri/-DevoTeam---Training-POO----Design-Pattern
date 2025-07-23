
# Guide de Formation : POO et Design Patterns en Apex

Bienvenue dans ce projet de formation. Il est conçu pour vous aider à maîtriser les principes fondamentaux de la Programmation Orientée Objet (POO) et les Design Patterns essentiels en Apex, afin de développer des applications robustes et maintenables.

Chaque concept est expliqué de manière concise et est accompagné de liens directs vers le code source et les scripts de démonstration pour une exploration pratique.

---

## Partie 1 : Les Piliers de la Programmation Orientée Objet (POO)

*Cette section couvre les concepts fondamentaux de la POO, essentiels pour structurer efficacement votre code.*

- **1. L'Héritage**
  - **Définition :** L'héritage permet à une classe (sous-classe) d'acquérir les propriétés et les méthodes d'une autre classe (super-classe). Ce mécanisme favorise la réutilisation du code et l'établissement de hiérarchies logiques entre les entités.
  - **[Voir le Code](force-app/main/default/classes/LesBasesDePOO/HeritageEnPOO)**
  - **[Lancer la Démo](scripts/apex/[Demo001]%20HeritageEnOOP.apex)**

- **2. Le Polymorphisme**
  - **Définition :** Le polymorphisme permet de traiter des objets de types différents de manière uniforme via une interface ou une classe de base commune. Il offre une grande flexibilité en permettant à une même méthode d'avoir des comportements variés selon le type d'objet sur lequel elle est appelée.
  - **[Voir le Code](force-app/main/default/classes/LesBasesDePOO/PolymorphismeEnPOO)**
  - **[Lancer la Démo](scripts/apex/[Demo002]%20PolymorphismeEnOOP.apex)**

- **3. L'Encapsulation**
  - **Définition :** L'encapsulation consiste à regrouper les données et les méthodes qui les manipulent au sein d'une même unité (l'objet), tout en contrôlant l'accès à ces données. Cela protège l'intégrité de l'état interne de l'objet et assure sa cohérence.
  - **[Voir le Code](force-app/main/default/classes/LesBasesDePOO/EncapsulationEnPOO)**
  - **[Lancer la Démo](scripts/apex/[Demo003]%20EncapsulationEnOOP.apex)**

- **4. L'Abstraction**
  - **Définition :** L'abstraction vise à masquer les détails complexes de l'implémentation pour n'exposer que les fonctionnalités essentielles et pertinentes. Elle permet de se concentrer sur le "quoi" (ce que l'objet fait) plutôt que sur le "comment" (comment il le fait).
  - **[Voir le Code](force-app/main/default/classes/LesBasesDePOO/AbstractionEnPOO)**
  - **[Lancer la Démo](scripts/apex/[Demo004]%20AbstractionEnOOP.apex)**

---

## Partie 2 : Concepts Avancés et Relations entre Objets

*Cette section explore les différentes manières dont les objets peuvent interagir et être structurés pour former des systèmes complexes.*

- **5. L'Agrégation & La Composition**
  - **Définition :** Ces deux concepts décrivent des relations de type "contient un". L'**agrégation** est une relation faible où les objets composants peuvent exister indépendamment de l'objet conteneur. La **composition** est une relation forte où les objets composants dépendent du cycle de vie de l'objet conteneur.
  - **[Voir le Code](force-app/main/default/classes/ConceptAvancesPOO/)**
  - **Démonstrations :** **[Agrégation](scripts/apex/[Demo005]%20Agrégation%20en%20POO.apex)** et **[Composition](scripts/apex/[Demo006]%20Composition%20en%20POO.apex)**

- **6. Les Interfaces**
  - **Définition :** Une interface est un contrat qui spécifie un ensemble de méthodes qu'une classe doit implémenter. Elle permet de définir des comportements communs que différentes classes peuvent adopter, favorisant ainsi le polymorphisme et le découplage.
  - **[Voir le Code](force-app/main/default/classes/ConceptAvancesPOO/ContratEtHeritageMultibleEnPOO)**
  - **[Lancer la Démo](scripts/apex/[Demo007]%20Implémentation%20Multiple.apex)**

---

## Partie 3 : Les Design Patterns Essentiels

*Cette section présente des solutions architecturales éprouvées pour résoudre des problèmes de conception récurrents, améliorant la flexibilité, la maintenabilité et la réutilisabilité du code.*

- **7. Singleton**
  - **Définition :** Un pattern de création qui garantit qu'une classe n'a qu'une seule instance et fournit un point d'accès global à cette instance. Il est utile pour gérer des ressources partagées ou des services uniques.
  - **[Voir le Code](force-app/main/default/classes/SystemDesignPatterns/Singleton)**
  - **[Lancer la Démo](scripts/apex/[Demo008]%20Singleton.apex)**

- **8. Factory Method**
  - **Définition :** Un pattern de création qui délègue la logique d'instanciation d'objets à des sous-classes ou à une méthode dédiée. Il permet de créer des objets sans spécifier la classe concrète de l'objet qui sera créé, favorisant le découplage.
  - **[Voir le Code](force-app/main/default/classes/SystemDesignPatterns/FactoryMethod)**
  - **[Lancer la Démo](scripts/apex/[Demo009]%20Factory%20Method.apex)**

- **9. Observer**
  - **Définition :** Un pattern comportemental qui établit une relation un-à-plusieurs entre un sujet et ses observateurs. Lorsque le sujet change d'état, tous ses observateurs sont automatiquement notifiés et mis à jour, sans couplage direct.
  - **[Voir le Code](force-app/main/default/classes/SystemDesignPatterns/Observer)**
  - **[Lancer la Démo](scripts/apex/[Demo010]%20Observer.apex)**

- **10. Strategy**
  - **Définition :** Un pattern comportemental qui permet de définir une famille d'algorithmes, de les encapsuler dans des classes distinctes et de les rendre interchangeables. Il permet de modifier le comportement d'un objet à l'exécution.
  - **[Voir le Code](force-app/main/default/classes/SystemDesignPatterns/Strategy)**
  - **[Lancer la Démo](scripts/apex/[Demo011]%20Strategy‐via‐Custom‐Metadata.apex)**

- **11. Decorator**
  - **Définition :** Un pattern structurel qui permet d'ajouter dynamiquement de nouvelles responsabilités à un objet en l'enveloppant dans des objets "décorateurs". Chaque décorateur ajoute une fonctionnalité tout en conservant la même interface.
  - **[Voir le Code](force-app/main/default/classes/SystemDesignPatterns/Décorateur)**
  - **[Lancer la Démo](scripts/apex/[Demo012]%20Decorator%20.apex)**

---

Projet créé par **@[Mohammed AZRI]**.


# Plan de Formation : POO et Design Patterns en Apex

Bienvenue dans ce projet d'apprentissage ! L'objectif est simple : vous aider à écrire du code Apex plus propre, plus efficace et plus professionnel en maîtrisant les concepts fondamentaux de la programmation et les bonnes pratiques de conception.

Cette formation est divisée en trois grandes parties, allant des bases aux concepts les plus avancés.

---

## Comment Utiliser ce Projet

Chaque concept est organisé de la manière suivante :
1.  **Le Code Source (`.cls`)** : Les classes Apex qui définissent la logique se trouvent dans le dossier `force-app/main/default/classes/`.
2.  **La Démonstration (`.apex`)** : Un script d'exemple, prêt à être exécuté, se trouve dans le dossier `scripts/apex/` pour vous montrer le concept en action.

---

## Plan de la Formation

### Partie 1 : Les Bases de la Programmation Orientée Objet (POO)

*Les concepts essentiels que tout développeur Apex doit maîtriser.*

- **1. L'Héritage**
  - **Concept :** Créer une classe qui en étend une autre (une `Voiture` est un `Vehicule`).
  - **Code :** `LesBasesDePOO/HeritageEnPOO`
  - **Démo :** `[Demo001] HeritageEnOOP.apex`

- **2. Le Polymorphisme**
  - **Concept :** Traiter des objets différents (`Cercle`, `Carré`) de la même manière.
  - **Code :** `LesBasesDePOO/PolymorphismeEnPOO`
  - **Démo :** `[Demo002] PolymorphismeEnOOP.apex`

- **3. L'Encapsulation**
  - **Concept :** Protéger les données d'un objet en contrôlant qui peut y accéder.
  - **Code :** `LesBasesDePOO/EncapsulationEnPOO`
  - **Démo :** `[Demo003] EncapsulationEnOOP.apex`

- **4. L'Abstraction**
  - **Concept :** Masquer les détails complexes pour ne montrer que l'essentiel.
  - **Code :** `LesBasesDePOO/AbstractionEnPOO`
  - **Démo :** `[Demo004] AbstractionEnOOP.apex`

### Partie 2 : Concepts Avancés de la POO

*Relations entre les objets et contrats de code.*

- **5. L'Agrégation**
  - **Concept :** Un objet qui en "contient" d'autres (un `Panier` avec des `Articles`).
  - **Code :** `ConceptAvancesPOO/AgregationEnPOO`
  - **Démo :** `[Demo005] Agrégation en POO.apex`

- **6. La Composition**
  - **Concept :** Un objet qui est "composé" d'autres (une `Maison` et ses `Pieces`).
  - **Code :** `ConceptAvancesPOO/CompositionEnPOO`
  - **Démo :** `[Demo006] Composition en POO.apex`

- **7. Les Interfaces (Implémentation Multiple)**
  - **Concept :** Permettre à une classe d'avoir plusieurs "casquettes" (un `Document` est `Imprimable` et `Exportable`).
  - **Code :** `ConceptAvancesPOO/ContratEtHeritageMultibleEnPOO`
  - **Démo :** `[Demo007] Implémentation Multiple.apex`

### Partie 3 : Les Design Patterns Essentiels

*Solutions éprouvées aux problèmes de conception courants.*

- **8. Singleton**
  - **Concept :** S'assurer qu'une classe n'a qu'une seule et unique instance.
  - **Code :** `SystemDesignPatterns/Singleton`
  - **Démo :** `[Demo008] Singleton.apex`

- **9. Factory Method**
  - **Concept :** Laisser une "usine" décider quel type d'objet créer pour nous.
  - **Code :** `SystemDesignPatterns/FactoryMethod`
  - **Démo :** `[Demo009] Factory Method.apex`

- **10. Observer**
  - **Concept :** Notifier automatiquement d'autres objets quand un événement se produit (ex: changement de prix).
  - **Code :** `SystemDesignPatterns/Observer`
  - **Démo :** `[Demo010] Observer.apex`

- **11. Strategy**
  - **Concept :** Rendre des algorithmes interchangeables (ex: différentes méthodes de calcul de frais de port).
  - **Code :** `SystemDesignPatterns/Strategy`
  - **Démo :** `[Demo011] Strategy‐via‐Custom‐Metadata.apex`

- **12. Decorator**
  - **Concept :** Ajouter de nouvelles fonctionnalités à un objet de manière flexible.
  - **Code :** `SystemDesignPatterns/Décorateur`
  - **Démo :** `[Demo012] Decorator .apex`

---

Projet créé par **@[DevoTeam]**.

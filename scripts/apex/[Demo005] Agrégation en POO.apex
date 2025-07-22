// 3) Demo en Execute Anonymous Apex
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
panier1.afficher();  // affiche A001: Stylo et A002: Cahier
panier2.afficher();  // affiche A002: Cahier



00:12:11.24 (28888836)|USER_DEBUG|[18]|DEBUG|--- Contenu Panier ---
00:12:11.24 (29027623)|USER_DEBUG|[20]|DEBUG|A001 : Stylo
00:12:11.24 (29042553)|USER_DEBUG|[20]|DEBUG|A002 : Cahier
00:12:11.24 (29065244)|USER_DEBUG|[18]|DEBUG|--- Contenu Panier ---
00:12:11.24 (29078805)|USER_DEBUG|[20]|DEBUG|A002 : Cahier
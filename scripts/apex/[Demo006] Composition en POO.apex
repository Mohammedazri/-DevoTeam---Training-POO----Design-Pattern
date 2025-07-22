// Execute Anonymous Apex
Maison m = new Maison();
m.ajouterPiece('Salon');
m.ajouterPiece('Cuisine');

for (Piece p : m.getPieces()) {
    System.debug('Pièce : ' + p.nom);
}


00:36:12.45 (52049599)|USER_DEBUG|[7]|DEBUG|Pièce : Salon
00:36:12.45 (52144521)|USER_DEBUG|[7]|DEBUG|Pièce : Cuisine
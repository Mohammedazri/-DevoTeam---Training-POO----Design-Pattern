// 2) Classe qui implémente les deux interfaces
public with sharing class Document implements Imprimable, Exportable {
    // Implémentation de la méthode imprimer()
    public void imprimer() {
        System.debug(LoggingLevel.INFO, '🖨 Impression du document…');
    }
    // Implémentation de la méthode exporter()
    public void exporter() {
        System.debug(LoggingLevel.INFO, '📄 Export du document en PDF…');
    }
}
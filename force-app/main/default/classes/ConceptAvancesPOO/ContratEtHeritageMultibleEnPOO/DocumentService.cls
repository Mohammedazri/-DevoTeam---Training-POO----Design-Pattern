// 3) (Optionnel) Service qui consomme les interfaces
public with sharing class DocumentService {
    // Traite l’impression d’un Imprimable
    public static void traiterImpression(Imprimable obj) {
        obj.imprimer();
    }
    // Traite l’export d’un Exportable
    public static void traiterExport(Exportable obj) {
        obj.exporter();
    }
}
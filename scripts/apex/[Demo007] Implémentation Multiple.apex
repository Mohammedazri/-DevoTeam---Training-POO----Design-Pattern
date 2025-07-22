// ——— Début de la démo Interfaces Multiples ———
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


09:25:46.81 (109071913)|USER_DEBUG|[2]|DEBUG|=== Démo : Imprimable & Exportable ===
09:25:46.81 (109302276)|USER_DEBUG|[8]|DEBUG|→ Appel direct :
09:25:46.81 (109638173)|USER_DEBUG|[5]|INFO|🖨 Impression du document…
09:25:46.81 (109751489)|USER_DEBUG|[9]|INFO|📄 Export du document en PDF…
09:25:46.81 (109770279)|USER_DEBUG|[13]|DEBUG|→ Via DocumentService :
09:25:46.81 (120211874)|USER_DEBUG|[5]|INFO|🖨 Impression du document…
09:25:46.81 (120382935)|USER_DEBUG|[9]|INFO|📄 Export du document en PDF…
09:25:46.81 (120457078)|USER_DEBUG|[17]|DEBUG|=== Fin de la démo ===


// WSLogger.cls
// WSLogger.cls
public with sharing class WSLogger {
    // --- 1) Instance unique (Singleton) ---
    private static WSLogger instance;
    private WSLogger() {
        // constructeur privé : empêche new WSLogger() depuis l'extérieur
    }
    public static WSLogger getInstance() {
        if (instance == null) {
            instance = new WSLogger();
        }
        return instance;
    }

    // --- 2) Log synchrone pour les erreurs critiques ---
    public void logError(String context, String message, Integer statusCode) {
    WS_Error_Log__c rec = new WS_Error_Log__c(
        Context__c    = context,
        Message__c    = message,
        // cast Integer → String
        StatusCode__c = String.valueOf(statusCode),
        // cast DateTime → String (format ISO 8601 par défaut)
        Timestamp__c  = String.valueOf(System.now())
    );
    insert rec;

    }

    // --- 3) Log asynchrone (méthode future) ---
    @future(callout=false)
    public static void recordLogAsync(String context, String message, Integer statusCode) {
        // On réutilise la même instance pour garantir la cohérence
        getInstance().logError(context, message, statusCode);
    }
}

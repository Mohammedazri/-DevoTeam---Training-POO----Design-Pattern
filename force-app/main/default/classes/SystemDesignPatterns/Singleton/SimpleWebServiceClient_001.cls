public with sharing class SimpleWebServiceClient_001 {
    private static final String ENDPOINT = 'https://api.example.com/001';

    /**
     * Simule un callout : 
     *   • si l’ID commence par 'BAD', on force une exception  
     *   • sinon on retourne une chaîne fictive.
     */
    public String fetchData(String recordId) {
        try {
            // Simule une erreur sur les IDs invalides
            if (String.isBlank(recordId) || recordId.startsWith('BAD')) {
            System.debug('Bad Request Client_001 SimpleWebServiceClient_001  -- RecID --- : '+recordId);
                throw new CalloutException('Client_001: Invalid recordId → ' + recordId);
            }
            // Happy path
            return 'Client_001 payload for ' + recordId;
        } 
        catch (Exception ex) {
            // Log asynchrone avec code fixe 500
            WSLogger.recordLogAsync(
                'SimpleWebServiceClient_001.fetchData',
                ex.getMessage(),
                500
            );
            // Puis on relance pour que le caller voie bien l’erreur
            throw ex;
        }
    }
}

public with sharing class SimpleWebServiceClient_00N {
    // (Optional) endpoint placeholder
    private static final String ENDPOINT = 'https://api.example.com/00N';

    /**
     * Simule un callout :
     *  • si recordId invalide (vide ou commençant par 'BAD'), on throw
     *  • sinon on renvoie une payload String
     */
    public String fetchData(String recordId) {
        try {
            if (String.isBlank(recordId) || recordId.startsWith('BAD')) {
                System.debug('Bad Request Client_001 SimpleWebServiceClient_00N  -- RecID --- : '+recordId);
                throw new CalloutException('Client_00N: Bad ID → ' + recordId);
            }
            return 'Client_00N payload for ' + recordId;
        } catch (Exception ex) {
            // Log asynchrone avec code fixe 502
            WSLogger.recordLogAsync(
                'SimpleWebServiceClient_00N.fetchData',
                ex.getMessage(),
                502
            );
            throw ex;
        }
    }
}

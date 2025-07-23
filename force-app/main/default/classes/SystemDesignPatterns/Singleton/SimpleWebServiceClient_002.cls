public with sharing class SimpleWebServiceClient_002 {
    private static final String ENDPOINT = 'https://api.example.com/002';

    /**
     * Simulate a callout:
     *  - throws on BAD IDs
     *  - returns a String payload otherwise
     */
    public String fetchData(String recordId) {
        try {
            if (String.isBlank(recordId) || recordId.startsWith('BAD')) {
                System.debug('Bad Request Client_001 SimpleWebServiceClient_002  -- RecID --- : '+recordId);
                throw new CalloutException('Client_002: Cannot fetch for ' + recordId);
            }
            return 'Client_002 result for ' + recordId;
        } catch (Exception ex) {
            // Log async with fixed code 501
            WSLogger.recordLogAsync(
                'SimpleWebServiceClient_002.fetchData',
                ex.getMessage(),
                501
            );
            throw ex;
        }
    }
}

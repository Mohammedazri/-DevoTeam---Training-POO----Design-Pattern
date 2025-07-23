// Démo WSLogger Singleton
System.debug('=== Début du démo WSLogger Singleton ===');

List<String> testIds = new List<String>{
    '001xx000003DGXnAAO',
    'BAD_ID0001',
    '003xx000004XYZnAAO',
    'BAD_ID002'
};

for (String recId : testIds) {
    // Client 1
    try {
        String result1 = new SimpleWebServiceClient_001().fetchData(recId);
        //System.debug('Client_001 OK : ' + result1);
    } catch (Exception ex) {
        //System.debug('Client_001 RedId Exception : ' + result1);
        WSLogger.recordLogAsync(
            'SimpleWebServiceClient_001.fetchData',
            ex.getMessage(),
            500
        );
    }

    // Client 2
    try {
        String result2 = new SimpleWebServiceClient_002().fetchData(recId);
        //System.debug('Client_002 OK : ' + result2);
    } catch (Exception ex) {
        //System.debug('Client_002 RedId Exception : ' + result2);
        WSLogger.recordLogAsync(
            'SimpleWebServiceClient_002.fetchData',
            ex.getMessage(),
            501
        );
    }

    // Client N
    try {
        String resultN = new SimpleWebServiceClient_00N().fetchData(recId);
        //System.debug('Client_00N OK : ' + resultN);
    } catch (Exception ex) {
        //System.debug('Client_00 RedId Exception : ' + resultN);
        WSLogger.recordLogAsync(
            'SimpleWebServiceClient_00N.fetchData',
            ex.getMessage(),
            502
        );
    }
} // fin du for

System.debug('=== Toutes les requêtes fetchData ont été exécutées ===');

// Interrogez les logs créés (sync + async)
List<WS_Error_Log__c> logs = [
    SELECT Context__c, Message__c, StatusCode__c, Timestamp__c
    FROM WS_Error_Log__c
    ORDER BY Timestamp__c DESC
    LIMIT 100
];
System.debug('=== WS_Error_Log__c records === ' + logs);

System.debug('=== Fin du démo WSLogger ===');


09:39:35.127 (128303719)|USER_DEBUG|[2]|DEBUG|=== Début du démo WSLogger Singleton ===
09:39:35.127 (160345070)|USER_DEBUG|[13]|DEBUG|Bad Request Client_001 SimpleWebServiceClient_001  -- RecID --- : BAD_ID0001
09:39:35.127 (212879805)|USER_DEBUG|[12]|DEBUG|Bad Request Client_001 SimpleWebServiceClient_002  -- RecID --- : BAD_ID0001
09:39:35.127 (245598057)|USER_DEBUG|[13]|DEBUG|Bad Request Client_001 SimpleWebServiceClient_00N  -- RecID --- : BAD_ID0001
09:39:35.127 (277546960)|USER_DEBUG|[13]|DEBUG|Bad Request Client_001 SimpleWebServiceClient_001  -- RecID --- : BAD_ID002
09:39:35.127 (310032138)|USER_DEBUG|[12]|DEBUG|Bad Request Client_001 SimpleWebServiceClient_002  -- RecID --- : BAD_ID002
09:39:35.127 (339373146)|USER_DEBUG|[13]|DEBUG|Bad Request Client_001 SimpleWebServiceClient_00N  -- RecID --- : BAD_ID002
09:39:35.127 (369463563)|USER_DEBUG|[52]|DEBUG|=== Toutes les requêtes fetchData ont été exécutées ===
09:39:35.127 (387241865)|USER_DEBUG|[61]|DEBUG|=== WS_Error_Log__c records === (WS_Error_Log__c:{Context__c=SimpleWebServiceClient_002.fetchData, Message__c=Client_002: Cannot fetch for BAD_ID0001, StatusCode__c=501, Timestamp__c=2025-07-22 12:31:41, Id=a00ak0000107r3tAAA}, WS_Error_Log__c:{Context__c=SimpleWebServiceClient_00N.fetchData, Message__c=Client_00N: Bad ID → BAD_ID0001, StatusCode__c=502, Timestamp__c=2025-07-22 12:31:40, Id=a00ak0000107YdzAAE}, WS_Error_Log__c:{Context__c=SimpleWebServiceClient_001.fetchData, Message__c=Client_001: Invalid recordId → BAD_ID002, StatusCode__c=500, Timestamp__c=2025-07-22 12:31:40, Id=a00ak0000107k5eAAA}, WS_Error_Log__c:{Context__c=SimpleWebServiceClient_002.fetchData, Message__c=Client_002: Cannot fetch for BAD_ID002, StatusCode__c=501, Timestamp__c=2025-07-22 12:31:39, Id=a00ak0000107r2HAAQ}, WS_Error_Log__c:{Context__c=SimpleWebServiceClient_001.fetchData, Message__c=Client_001: Invalid recordId → BAD_ID0001, StatusCode__c=500, Timestamp__c=2025-07-22 12:31:38, Id=a00ak0000107ndOAAQ}, WS_Error_Log__c:{Context__c=SimpleWebServiceClient_001.fetchData, Message__c=Client_001: Invalid recordId → BAD_ID0001, StatusCode__c=500, Timestamp__c=2025-07-22 12:31:36, Id=a00ak0000107r0fAAA}, WS_Error_Log__c:{Context__c=SimpleWebServiceClient_00N.fetchData, Message__c=Client_00N: Bad ID → BAD_ID0001, StatusCode__c=502, Timestamp__c=2025-07-22 12:31:35, Id=a00ak0000107qxRAAQ}, WS_Error_Log__c:{Context__c=SimpleWebServiceClient_002.fetchData, Message__c=Client_002: Cannot fetch for BAD_ID0001, StatusCode__c=501, Timestamp__c=2025-07-22 12:31:35, Id=a00ak0000107pBmAAI}, WS_Error_Log__c:{Context__c=SimpleWebServiceClient_00N.fetchData, Message__c=Client_00N: Bad ID → BAD_ID002, StatusCode__c=502, Timestamp__c=2025-07-22 12:31:35, Id=a00ak0000107qz3AAA}, WS_Error_Log__c:{Context__c=SimpleWebServiceClient_00N.fetchData, Message__c=Client_00N: Bad ID → BAD_ID002, StatusCode__c=502, Timestamp__c=2025-07-22 12:31:35, Id=a00ak0000107qvpAAA}, ...)
09:39:35.127 (387313441)|USER_DEBUG|[63]|DEBUG|=== Fin du démo WSLogger ===
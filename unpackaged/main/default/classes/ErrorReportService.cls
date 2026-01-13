public class ErrorReportService {

    public class CustomAppException extends Exception {}

    public static String generateErrorReport(Exception ex) {
        Map<String, Object> report = new Map<String, Object>();
        report.put('timestamp', System.now());
        report.put('exception', JSON.serialize(ex));  // Bad: serializing exception
        return JSON.serialize(report);
    }

    public static void sendErrorToExternalSystem(CustomAppException appEx) {
        // Bad: CustomAppException extends Exception
        String payload = JSON.serializePretty(appEx);
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://errors.example.com/api/log');
        request.setMethod('POST');
        request.setBody(payload);
        http.send(request);
    }

    public static void handleQueryException(QueryException qe) {
        // Bad: QueryException extends Exception
        String errorJson = JSON.serialize(qe);
        System.debug(LoggingLevel.ERROR, errorJson);
    }
}

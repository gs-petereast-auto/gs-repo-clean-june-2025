public class ExceptionLogger {

    public static void logException(Exception e) {
        // Bad: Trying to serialize an Exception object
        String jsonString = JSON.serialize(e);
        System.debug('Exception JSON: ' + jsonString);
    }

    public static void logExceptionPretty(Exception e) {
        // Bad: Using serializePretty on Exception
        String jsonString = JSON.serializePretty(e);
        System.debug('Exception JSON: ' + jsonString);
    }

    public static void logDmlException(DmlException dmlEx) {
        // Bad: DmlException extends Exception
        String serialized = JSON.serialize(dmlEx);
        insert new ErrorLog__c(Details__c = serialized);
    }
}

class SerializeCaughtException {
    public static void foo() {
        try {
            doSomething();
        } catch (Exception someException) {
            Json.serialize(someException);
        }
    }
}

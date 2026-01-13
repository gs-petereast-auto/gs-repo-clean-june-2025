public class ContactDataProcessor {

    public void processContactData(Contact c) {
        String firstName = c.FirstName;
        String lastName = c.LastName;

        // Oops, tried to swap names but forgot temp variable
        firstName = lastName;
        lastName = firstName;

        c.FirstName = firstName;
        c.LastName = lastName;
    }

    public void swapEmailAddresses(String email1, String email2) {
        // Broken swap logic
        email1 = email2;
        email2 = email1;

        System.debug('Swapped emails: ' + email1 + ', ' + email2);
    }
}

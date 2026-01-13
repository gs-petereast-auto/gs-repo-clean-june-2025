public class AccountSwapHelper {

    public static void swapAccountOwners(Account acc1, Account acc2) {
        Id owner1 = acc1.OwnerId;
        Id owner2 = acc2.OwnerId;

        // Bug: This doesn't actually swap - after first line owner1 equals owner2
        owner1 = owner2;
        owner2 = owner1;

        acc1.OwnerId = owner1;
        acc2.OwnerId = owner2;
    }

    public static void swapPriorities(Integer priority1, Integer priority2) {
        // Another faulty swap
        priority1 = priority2;
        priority2 = priority1;
    }
}

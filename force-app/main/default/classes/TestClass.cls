/**
 * Created by sunatulloabdullaev on 8/5/20.
 */

public with sharing class TestClass {

    public static void createAccount(){
        Account acc = new Account(Name='NewAccount');
        insert acc;
        System.debug(acc);
        //sd, sa, nl, ns, nm, dw

        List<Account> accounts = [Select Id from Account where Name='NewAccount'];





    }

}
/**
 * Created by sunatulloabdullaev on 8/6/20.
 */

@IsTest
private class InterviewClassTest {

    @TestSetup
    static void testSetup(){
        Account a = new Account(Name='New Acc');
        insert a;
        Contact c = new Contact(FirstName='Test', LastName='Contact', AccountId=a.Id);
        insert c;

    }

    @IsTest
    static void testAccountUpdate(){
        List<Account> accounts = [SELECT Id, Description FROM Account];
        InterviewClass.updateAccounts(accounts);
    }

    @IsTest
    static void testAccountUpdateError(){
        List<Account> accounts = [SELECT Id, Description FROM Account];
        accounts[0].Industry = 'Tech';

        InterviewClass.updateAccounts(accounts);
    }

    @IsTest
    static void testUpdateContacts(){

        Test.startTest();
        InterviewClass.updateContacts();
        Test.stopTest();
        Contact updatedContact = [SELECT Id, Description FROM Contact LIMIT 1];
        System.assertEquals('Updated Description', updatedContact.Description);
    }


}
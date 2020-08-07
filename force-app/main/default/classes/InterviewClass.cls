/**
 * Created by sunatulloabdullaev on 8/6/20.
 */

public with sharing class InterviewClass {

    //Optimize and clean up
    public static void updateContacts(){
        List<Contact> contactList = [SELECT Id, FirstName, LastName, Email, Phone,
                                            MailingStreet, Account.Name,  Description
                                     FROM Contact
                                     WHERE CreatedDate = :Date.today()];
        List<Contact> contactsToUpdate = new List<Contact>();
        for(Contact c: contactList){
            c.Description = 'Updated Description';
            contactsToUpdate.add(c);
        }
        update contactsToUpdate;
    }


    //LWC Controller
    @AuraEnabled
    public static void updateAccounts(List<Account> l){
        List<Account> accountsToUpdate = new List<Account>();
        for(Account acc: l){
            acc.Description = 'Updated Description';
            accountsToUpdate.add(acc);

            try{
                update accountsToUpdate;
            }catch(Exception e){
                e.getStackTraceString();
            }
        }

    }




}
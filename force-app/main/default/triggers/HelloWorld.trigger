/**
 * Created by sunatulloabdullaev on 8/6/20.
 */

trigger HelloWorld on Lead (after update) {

    for(Lead l: Trigger.new){
        l.FirstName = 'Hello';
        l.LastName = 'World';
    }

}
public with sharing class ActiveStudents {
    public List<apxio__Student__c> selectActiveStudents() {
    
    List<apxio__Student__c> actStudent = [SELECT Id, Name FROM apxio__Student__c WHERE apxio__Student__c.apxio__Active__c=true];

    return actStudent;

}
//#128 - Active Students
}
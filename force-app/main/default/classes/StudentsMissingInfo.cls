public with sharing class StudentsMissingInfo {
    public List<apxio__Student__c> selectStudentsWithoutContactInfo() {
  
    List<apxio__Student__c> actStudent = [
        SELECT Id, Name 
        FROM apxio__Student__c 
        WHERE apxio__Active__c=true AND
            (apxio__Phone__c=null OR
            apxio__Email__c=null) 
        ORDER BY Name ASC
    ];

    return actStudent;

}

//#129 - Students Missing Info
}
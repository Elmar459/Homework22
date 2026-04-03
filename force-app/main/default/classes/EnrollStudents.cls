public with sharing class EnrollStudents {
    public void enrollStudents(List<String> emails, String className) {
    
        List<apxio__Class__c> classes = [
        SELECT Id
        FROM apxio__Class__c
        WHERE Name = :className
    ];
    
    if(classes.isEmpty()) {
        return;
    }
    
    
    apxio__Class__c classRecord = classes[0];
    
    
    List<apxio__Student__c> students = [
        SELECT Id
        FROM apxio__Student__c
        WHERE apxio__Email__c IN :emails
    ];
    
    
    List<apxio__Class_Enrollment__c> enrollments = new List<apxio__Class_Enrollment__c>();
    
    for(apxio__Student__c student : students) {
        
        enrollments.add(new apxio__Class_Enrollment__c(
            apxio__Student__c = student.Id,
            apxio__Offered_Class__c = classRecord.Id
        ));
    }
    
    
    if(!enrollments.isEmpty()) {
        insert enrollments;
    }
}
//#135 - Enroll Students
}
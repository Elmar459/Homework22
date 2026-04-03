public with sharing class StudentList {
    
    public void insertStudents(List<String> studentNames, List<String> studentEmails) {
    
    List<apxio__Student__c> allStudents = new List<apxio__Student__c>();

    
    for(Integer i = 0; i < studentNames.size(); i++){
    
    apxio__Student__c s = new apxio__Student__c(
    Name = studentNames[i],
    apxio__Email__c = studentEmails[i]
);
    allStudents.add(s);
    }
    insert allStudents;
}
//#133 - Student List
}
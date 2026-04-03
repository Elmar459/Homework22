public with sharing class ClassfromCourse {
    public Id classFromCourse(String courseName) {
    
    List<apxio__Course__c> courses = [SELECT Id, Name
    FROM apxio__Course__c 
    WHERE Name = :courseName];

    if(courses.isEmpty()) {
    return null;
}

    apxio__Course__c course = courses[0];
    apxio__Class__c newClass = new apxio__Class__c(Name=course.Name, apxio__Course__c = course.Id);
    
    insert newClass;
    return newClass.Id;

}
//#134 - Class from Course
}
public with sharing class StudentAidController {
        private final Student__c studentRecord;
    
    public StudentAidController(ApexPages.StandardController sc)
    {
        studentRecord = (Student__c)sc.getRecord();
    }

    public PageReference applyForAid()
    {
        studentRecord.Applied_For_Financial_Aid__c = true;
        update studentRecord;
        return null;
    }
    
    @AuraEnabled
    public static Student__c getStudent(ID studentID)
    {
        if(studentID==null)
            return null;
            
        List<Student__c> students = [Select ID, Applied_For_Financial_Aid__c from Student__c where ID = :studentID];
        if(students.size()>0)
        {          
            return students[0];
        }
        return null;
    }
    
      @RemoteAction @AuraEnabled
    public static void applyForAidAction(ID studentID)
    {
        List<Student__c> students = [Select ID, Applied_For_Financial_Aid__c from Student__c where ID = :studentID];
        if(students.size()>0)
        {
            students[0].Applied_For_Financial_Aid__c = true;
            update students;
        }
    }
}
public class SendMail {
   public static void sendeMail()
    {
        ApexPages.PageReference booksReport = new ApexPages.PageReference('https://na31.salesforce.com/00O370000020GQi');
        Messaging.EmailFileAttachment booksFile = new Messaging.EmailFileAttachment();
        booksFile.setFileName('Books.csv');
       	booksFile.setBody(booksReport.getContent());
        //booksFile.setContentType('csv');
        Messaging.SingleEmailMessage booksEmail = new Messaging.SingleEmailMessage();
        booksEmail.setFileAttachments(new Messaging.EmailFileAttachment[] { booksFile } );
        booksEmail.setSubject('Books Report');
        booksEmail.setPlainTextBody('Attached is the Books Report');
        booksEmail.setToAddresses( new String[] { 'chrisasalgado@gmail.com' } );
        Messaging.sendEmail( new Messaging.SingleEmailMessage[] { booksEmail } );    
    }
}
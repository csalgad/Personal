public class MyController {

private final Account account;

public MyController() {
        account = [SELECT Id, Name, Site FROM Account 
                   WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }

    public Account getAccount() {
        return account;
    }

    public PageReference save() {
        update account;
        return null;
    }

public String showingTheField = 'Yes';  
public Boolean showField;

    public void showTextBox() {
         if(showingTheField =='Yes'){
             showField = True;
        }else{
            showField = False;           
            }
        }        
}
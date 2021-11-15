public class LeadTriggerHelper {
    public static void checkforDuplicateEmails(List<Lead> newLeads){
        Set<String> newEmails = new Set<String>();
        
        for(Lead l : newLeads){
            if(l.Email != null){
                newEmails.add(l.Email);
            }
        }
        List<Lead> existingLeads =[SELECT Id, Email FROM Lead WHERE Email IN :newEmails];
        
        Set<String> existingEmails = new Set<String>();
        for(Lead l : existingLeads){
            existingEmails.add(l.Email);
        }
        
        for(Lead l : newLeads){
            if(existingEmails.contains(l.Email)){
                l.Email.addError('Cant Create contact because the email provided is already in our database');
            }
        }
    }
}
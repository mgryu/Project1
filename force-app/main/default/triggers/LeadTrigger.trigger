// Trigger that prevents a lead record to be created through web-to-lead if there is an existing lead record with the same email.
trigger LeadTrigger on Lead (before insert) {
    switch on Trigger.operationType{
        when BEFORE_INSERT{
            LeadTriggerHelper.checkforDuplicateEmails(trigger.new);
        }
    }
}
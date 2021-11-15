public with sharing class Campaigns {
    @AuraEnabled(cacheable=true)

    public static List<sObject> getCampaigns(){
        return [SELECT Name, NumberOfLeads FROM Campaign];
    }
}
public with sharing class lwcOpportunity {

    @AuraEnabled(cacheable=true)

    public static List<Opportunity> getOppLwc(){
        return [SELECT Id, Name, Amount, StageName, CreatedDate 
                FROM Opportunity  
                WHERE StageName like 'Contrato Assinado' or StageName like 'Perda'
                ORDER BY CreatedDate DESC 
                LIMIT 5];
    }
}
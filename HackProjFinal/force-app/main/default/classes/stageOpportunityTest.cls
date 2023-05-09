@isTest
private class stageOpportunityTest {
    
    @isTest static void testGetOppLwc() {
        // Criando as oportunidades 
        List<Opportunity> opps = new List<Opportunity>();
        for(Integer i = 1; i <= 5; i++){
            opps.add(new Opportunity(Name='Teste Opp ' + i, Amount=i*1000, StageName='Identificado', CloseDate=Date.today()));
        }        
        insert opps;
        
        List<Opportunity> oppsResult = stageOpportunity.getOppLwc();
        
        // Teste positivo
        System.assertEquals(5, oppsResult.size(), 'O número de oportunidades retornadas deve ser 5.');
    }
}
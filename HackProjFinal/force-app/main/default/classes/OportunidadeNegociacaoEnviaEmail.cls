public class OportunidadeNegociacaoEnviaEmail {
    private List<Opportunity> m_listDataNew;
    private List<Opportunity> m_listFiltered = new List<Opportunity>();
    private Map<Id, Opportunity> m_mapDataOld;
    private Map<Id, Opportunity> m_mapObjFiltered = new Map<Id, Opportunity>();
    private Boolean hasRecords;
    private final String FASE_NEGOCIACAO = 'Em Negociação';
    Set<Id> precoCatalogoIds = new Set<Id>();

    public OportunidadeNegociacaoEnviaEmail(List<Opportunity> lstDataNew, Map<Id,Opportunity> mapDataOld){
        this.m_listDataNew = lstDataNew;
        this.m_mapDataOld = mapDataOld;
        filter();
        this.hasRecords = !precoCatalogoIds.isEmpty();
    }

    private void filter(){
        for(Opportunity opp : m_listDataNew){
            if (opp.Pricebook2Id != m_mapDataOld.get(opp.Id).Pricebook2Id) {
                precoCatalogoIds.add(opp.Pricebook2Id);
                m_listFiltered.add(opp);
            }
        }      
    }

    public void run(){
        if(hasRecords){
            List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
            for (Opportunity opp : m_listFiltered) {
                if (precoCatalogoIds.contains(opp.Pricebook2Id) && opp.Email__c != null && opp.Email__c != '') {
                    Account acc = [SELECT Id, Name FROM Account WHERE id = :opp.AccountId];
                    Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
                    email.setToAddresses(new String[] {opp.Email__c});
                    email.setSubject('Novos Preços');
                    email.setPlainTextBody('Olá ' + acc.Name + ',\n\nO catálogo de preços da oportunidade ' + opp.Name + ' foi atualizado. Por favor, verifique os novos preços disponíveis.\n\nObrigado,\nSua Empresa');
                    emails.add(email);
                }
            }
            Messaging.sendEmail(emails);
        }
    }
}
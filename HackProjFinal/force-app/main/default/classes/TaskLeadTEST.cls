@isTest
public class TaskLeadTEST {
    @isTest static void verificaTarefaPositivo(){
        // Criando um Lead que atenda aos critérios da trigger
        Lead testLead = new Lead(
            FirstName = 'John',
            LastName = 'Doe',
            Company = 'Acme Corporation',
            Phone = '2356138316',
            Status = 'Contactado'
        );
        insert testLead;
        
        //atualizando o campo Status do Lead
        testLead = new Lead(
            id = testLead.id,
            Status = 'Em negociação'
        );
        update testLead;
        
        // TESTE POSITIVO verificando se a trigger criou uma Task para a Lead que atende aos critérios
        Task task = [SELECT WhoId FROM Task WHERE WhoId =:testLead.Id];
        System.assertEquals(testLead.Id, task.WhoId);
    }
    
    @isTest static void verificaTarefaNegativo(){
        // Criando um Lead que não atenda aos critérios da trigger
        Lead testLead2 = new Lead(
            FirstName = 'Jane',
            LastName = 'Doe',
            Company = 'Acme Corporation',
            Phone = '1234567890',
            Status = 'Não Contactado'
        );
        insert testLead2;
        
        //atualizando o campo Status do Lead
        testLead2 = new Lead(
            id = testLead2.id,
            Status = 'Em negociação'
        );
        update testLead2;
        
        // TESTE NEGATIVO verificando se nenhuma Task foi criada para o Lead que não atende aos critérios
        List<Task> tasks = [SELECT WhoId FROM Task WHERE WhoId =:testLead2.Id];
        System.assertEquals(0, tasks.size(), 'Não deve ter sido criada uma tarefa para um Lead que não atende aos critérios');
    }
}
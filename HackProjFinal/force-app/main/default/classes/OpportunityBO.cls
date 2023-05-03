public class OpportunityBO {

    public static Opportunity criaOportunidade(){
        Opportunity opp = new Opportunity(
            Name = 'Opp Teste',
            CloseDate = Date.today()+10,
            Amount = 10000,
            StageName = 'Identificado'
        );
        return opp;
    }

    public static Opportunity retornaOportunidadePorId(Id id){
        return [SELECT Id, Name, CloseDate, Amount, StageName
                FROM Opportunity
                WHERE Id = :id
        ];
    }
    
    public static void criaTarefaRelacionada(List<Opportunity> opps){
        List<Task> newTasks = new List<Task>();
        for(Opportunity opp : opps){
            Task task = new Task(Subject = 'Um time de profissionais deve ser designado para o local do reparo.', Priority = 'High', WhatId = opp.Id, ActivityDate = date.today()+5);
            newTasks.add(task);
        }
        insert newTasks;
    }
}
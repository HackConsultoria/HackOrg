public class TaskBO {
    public static Task retornaTaskRelacionada(Id id) {
        return [SELECT Id, Subject, ActivityDate, WhatId
                FROM Task
                WHERE WhatId = :id
        ];
    }
}
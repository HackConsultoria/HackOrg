public class LeadTriggerHandler extends TriggerHandler{
    private List<Lead> newList;
    private List<Lead> oldList;
    
    public LeadTriggerHandler(){
        this.newList = (List<Lead>) Trigger.new;
        this.oldList = (List<Lead>) Trigger.old;
    }

    protected override void beforeInsert(){      
    }
    
    protected override void afterInsert(){
    }
    
    protected override void beforeUpdate(){
       
    }
    
    protected override void afterUpdate(){
    }
}
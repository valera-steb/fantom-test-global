using concurrent


const class ActorWithContext: Actor
{
  new make(ActorPool p) : super(p){}
  
  override Obj? receive(Obj? msg){
    ctx := getContext()
    ctx.execute()
    ctx.state = msg.toStr()
    return null;
  }
  
  private ActorsContext getContext(){
    ctx := (ActorsContext?) ActorWithContext.locals.get("context", null)
    
    if(ctx == null){
      ctx = ActorsContext.make
      ActorWithContext.locals["context"] = ctx 
    }
    
    return ctx
  }
}

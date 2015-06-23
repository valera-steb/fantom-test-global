using gfx;
using fwt;
using concurrent;


const class WindowActor: Actor
{  
  new make(ActorPool p) : super(p) { }
  
  override Obj? receive(Obj? msg){
    key := msg.toStr
    
    if(state()==""){
      setState("working")
      makeWindow(key)
    }
    else{
      w := getWindow();
      
    }
    
    return null
  }
  
  private Void makeWindow(Str inText){
    w:=Window{
      size = Size(300, 200)
      Label{text = inText},
    }.open
    WindowActor.locals.get("window", w)
  }
  
  private Str state(){
    ret := (Str)WindowActor.locals.get("state", "");
    echo(ret);
    return ret;
  }
  private Void setState(Str st){
    WindowActor.locals["state"] = st;
    echo(st);
  }
  
  private Window getWindow(){
    return (Window)WindowActor.locals.get("window", null)
  }
}

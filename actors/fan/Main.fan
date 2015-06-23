using gfx;
using fwt;
using concurrent;

class Main
{
  static const ActorPool pool := ActorPool.make
  
	static Void main(Str[] args)
	{
    a := ActorWithContext(pool)
    a.send("msg1")
    a.send("msg2")
	}
  
  static Void open(Str inText){
    Window{
      size = Size(300, 200)
      Label{text = inText},
    }.open    
  }
  
  static Void failed(){
    
    o := funcForActor.make
    a := Actor(pool) |Obj msg->Obj? |{ 
      echo(msg)
//      execute(o)
//      o.execute(o)
      return null 
    }
    a.send("hi")
  }
  
  static Void runWindows(){
    hi := WindowActor(pool)
    by := WindowActor(pool)
    
    hi.send("hi")
    by.send("by")
    
    hi.send("hi again")
    
    open("end")
  }
}

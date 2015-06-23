using fwt
using gfx


class adderWindow
{
  Void launch(){
    Window{
      size = Size(300, 400)
      content = TabPane{
        Tab {text = "Start"; InsetPane{Label{text="hi"}, }, },
        Tab {text = "Start"; InsetPane{makeButtons, }, },
      }
    }.open   
  }
  
  Widget makeButtons()
  {
    return GridPane
    {
      numCols = 3
      hgap = 20
      Button { text = "B1"; onAction.add(cb) },
      Button { text = "Monospace"; font = Desktop.sysFontMonospace; onAction.add(cb) },
      Button { mode = ButtonMode.toggle; text = "Button 3"; onAction.add(cb) },
      Button { mode = ButtonMode.check; text = "B4"; onAction.add(cb) },
      Button { mode = ButtonMode.radio; text = "Button 5"; onAction.add(cb) },
      Button { mode = ButtonMode.radio; text = "B6"; onAction.add(cb) },
      Button { text = "Popup 1"; },
      Button { text = "Popup 2"; },
      Button { text = "Disabled"; enabled=false },
      Button { text = "Invisible"; visible=false },
    }
  }
  

    static |Event e| cb()
  {
    return |Event e|
    {
      w := e.widget
      echo("${w->text} selected=${w->selected}")
    }
  }
}

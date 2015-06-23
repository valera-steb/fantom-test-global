using build
class Build : build::BuildPod
{
  new make()
  {
    podName = "gui"
    summary = ""
    srcDirs = [`fan/`, `fan/fwt/`, `fan/adder/`]
    depends = ["sys 1.0", "fwt 1.0", "gfx 1.0", "concurrent 1.0"]
  }
}

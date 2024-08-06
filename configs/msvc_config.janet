(unless (os/getenv "INCLUDE")
  (errorf "Run from a developer console or run the vcvars%d.bat script to setup compiler environment."
          (if (= (os/arch) :x64) 64 32)))

(def prefix (os/getenv "PREFIX")

(def config
  {:ar "lib.exe"
   :auto-shebang true
   :binpath (string prefix "/bin")
   :c++ "cl.exe"
   :c++-link "link.exe"
   :cc "cl.exe"
   :cc-link "link.exe"
   :cflags @["/nologo" "/MD"]
   :cppflags @["/nologo" "/MD" "/EHsc"]
   :cflags-verbose @["-Wall"]
   :curlpath "curl"
   :dynamic-cflags @["/LD"]
   :dynamic-lflags @["/DLL"]
   :gitpath "git"
   :headerpath (string prefix "/include/janet")
   :is-msvc true
   :janet "janet"
   :janet-cflags @[]
   :janet-lflags @[]
   :ldflags @[]
   :lflags @["/nologo"]
   :libpath (string prefix "/lib")
   :local false
   :manpath (string prefix "/docs")
   :modext ".dll"
   :modpath (string prefix "/lib")
   :nocolor false
   :optimize 2
   :pkglist "https://github.com/janet-lang/pkgs.git"
   :silent false
   :statext ".static.lib"
   :tarpath "tar"
   :test false
   :use-batch-shell true
   :verbose false})

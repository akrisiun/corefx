# ./b -restore
# ./b -build
# ./b -pack
Invoke-Expression "& `"eng/build.ps1`" $arguments"
exit $lastExitCode

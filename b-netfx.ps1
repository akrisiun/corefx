# ./b -restore
# ./b -build -f netfx
# ./b -pack

$arguments = "-f netfx -build"
echo " $PWD/`"eng/build.ps1`" $arguments"
Invoke-Expression "& `"eng/build.ps1`" $arguments"
exit $lastExitCode

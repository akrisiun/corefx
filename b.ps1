# ./b -restore
# ./b -build
# ./b -build -sign -pack


# Invoke-Expression "& `"eng/build.ps1`" $arguments"
./eng/build -pack -f netfx

./eng/common/build -sign
./eng/common/build -pack # -f netcoreapp
exit $lastExitCode

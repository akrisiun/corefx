
 ../../.dotnet/dotnet.exe  restore src\System.Runtime\src\System.Runtime.csproj 

 #invoke-webrequest https://dotnetcli.azureedge.net/dotnet/Runtime/3.0.0-preview4-27419-7/dotnet-runtime-3.0.0-preview4-27419-7-win-x64.zip `
        #-o dotnet-runtime-3.0.0-preview4-27419-7-win-x64.zip
 
 ../../.dotnet/dotnet.exe  build   src\System.Runtime\src\System.Runtime.csproj  --no-restore
 ../../.dotnet/dotnet.exe  build   src\System.Runtime\src\System.Runtime.csproj  --no-restore -o lib\
 
 ../../.dotnet/dotnet build -o lib\ -c Debug
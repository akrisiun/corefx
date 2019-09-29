# dotb + args

$ErrorActionPreference = 'Stop'
$a_args = $PsBoundParameters.Values + $args

write-host -f magenta "e:\Beta\dotnet\corefx3\.dotnet\dotnet.exe $a_args"

 e:\Beta\dotnet\corefx3\.dotnet\dotnet.exe $a_args
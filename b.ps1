
dot3 msbuild build.proj /t:Restore

# dotnet msbuild src/packages.builds /t:GenerateVersionFileForPackages
# dotnet msbuild src/packages.builds /t:UpdatePackageIndexWithStableVersions

dot3 msbuild build.proj /t:BuildManaged
dot3 msbuild build.proj /t:Build

dotnet msbuild build.proj /t:Pack

# Microsoft.Private.CoreFx.NETCoreApp.nuspec. System.ArgumentOutOfRangeException: The DateTimeOffset specified cannot be converted into a Zip file timestamp. (Parameter 'value') 

dotnet msbuild build.proj /t:Restore

# dotnet msbuild src/packages.builds /t:GenerateVersionFileForPackages
# dotnet msbuild src/packages.builds /t:UpdatePackageIndexWithStableVersions
dotnet msbuild build.proj /t:BuildManaged
dotnet msbuild build.proj /t:Build

dotnet msbuild build.proj /t:Pack

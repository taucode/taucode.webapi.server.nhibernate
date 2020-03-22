dotnet restore

dotnet build --configuration Debug
dotnet build --configuration Release

dotnet test -c Debug .\tests\TauCode.WebApi.Server.NHibernate.Tests\TauCode.WebApi.Server.NHibernate.Tests.csproj
dotnet test -c Release .\tests\TauCode.WebApi.Server.NHibernate.Tests\TauCode.WebApi.Server.NHibernate.Tests.csproj

nuget pack nuget\TauCode.WebApi.Server.NHibernate.nuspec

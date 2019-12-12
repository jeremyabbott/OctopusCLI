FROM mcr.microsoft.com/dotnet/core/sdk:3.1.100-alpine3.10

COPY ./nupkg/Octopus.DotNet.Cli.1.0.0.nupkg /nupkg/Octopus.DotNet.Cli.1.0.0.nupkg

RUN dotnet tool install --tool-path ./tools --add-source ./nupkg Octopus.DotNet.Cli

# ENTRYPOINT [ "./tools/dotnet-octo" ]
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY /src/. .
RUN dotnet restore order-management/*.csproj
WORKDIR /src/order-management
RUN dotnet build order-management.csproj -c Release -o /app

FROM build AS publish
WORKDIR /src/order-management
RUN dotnet publish order-management.csproj -c Release -o /app 

FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS runtime
WORKDIR /app
COPY --from=publish /app .
EXPOSE 5000
ENV COMPlus_EnableDiagnostics=0
ENTRYPOINT ["dotnet", "order-management.dll"]

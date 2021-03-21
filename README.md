# RideXpress <img align="right" width="400" height="267" src="RideXpress/Images/350zWheel.jpg">
### Incident Management Software System
<br>

---

RideXpress is a software platform giving RideXpress employees the ability to add and edit the car inventory available and also the ability to create new incident reports for each car available in the inventory.

## Setting Up Local Environment
These instructions will help you set up a local development environment, run the project on your machine for development and testing purposes, and deploy it on a live system. See [Deployment](https://github.com/jtanaeki/RideXpress/blob/main/README.md#deployment) for notes on how to deploy the project. See [Contributing](https://github.com/jtanaeki/RideXpress/blob/main/README.md#contributing) for notes on how to contribute to this repository.

### Prerequisites
Before building and testing the application, you must make sure to have any IDE installed that supports .NET Core development, such as the latest version of [Visual Studio Community](https://visualstudio.microsoft.com/downloads/#). You will also need to install [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) on your system.

If you are running the application on the command line, you will need to download and install the latest version of [.NET Core SDK](https://dotnet.microsoft.com/download).

### Cloning the Repository
After installing the necessary software, you can clone a local copy of the repository. A [ZIP file version](https://github.com/jtanaeki/RideXpress/archive/refs/heads/main.zip) of the copy can be downloaded, or you can clone the repository directly over HTTPS from the command line:

```bash
git clone https://github.com/jtanaeki/RideXpress.git
```

### Tables in Database
![Image of Database Tables](https://user-images.githubusercontent.com/55217672/111884697-b2574f00-8999-11eb-9bb5-698b4473b0ba.png)

## Running the Application


## Tools Used
### Servers
* [Internet Information Services (IIS)](https://www.iis.net/)

### Databases
* [SQL Server](https://www.microsoft.com/en-us/sql-server/)

### Languages & Frameworks
* [ASP.NET](https://dotnet.microsoft.com/apps/aspnet)
* [C#](https://docs.microsoft.com/en-us/dotnet/csharp/tour-of-csharp/)

## Deployment
### Enabling IIS Features
Before using Visual Studio to deploy the application through Internet Information Services (IIS), you must make sure the features for IIS are enabled:
1. Go to Control Panel → Programs → Turn Windows features on or off (Alternatively, you can type "Turn Windows features on or off" in the search box next to the Start Menu).
2. Make sure "Internet Information Services" and "Internet Information Services Hostable Web Core" are selected.
3. Expand the "Internet Information Services" folder → Expand the "World Wide Web Services" folder → Expand the "Application Development Features".
4. Select the latest ASP.NET version (4.0+). Other required folders will then automatically be selected.
5. Click OK.
6. Windows will search for the required files and apply changes.
7. Click Close.

### Sample Page
![Image of Sample Page](https://user-images.githubusercontent.com/55217672/111885538-d36e6e80-899e-11eb-9a21-50889e8c1c5b.png)



## Contributing

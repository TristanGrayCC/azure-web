# Azure Web App

## Story

A business has a basic website allowing customers see a list of cars available on the Computershare car list.

As the business has grown through the years, there needs to be a scalable solution and so is planning to move hosting to Azure including a CI and CD pipeline to improve delivery cadence.

The new functional requirements of the system are:

- Extending the UI include a car VIN (Vechicle Identification Number) column
- Add integer validation to ID column 
- Change "Type" field to a fixed dropdown list 
- Add username and password authentication to the application storing the username and password credentials in the local web.config

## Tasks for participants

- Deploy the existing project to Azure 
- Include a CI and CD pipeline
- Add a new column called "VIN  Number" and validation on save that it is an 8 digit numeric value
- Add integer validation to ID column 
- Convert the type field to a dropdown list on edit
- Add authentication to the application storing username and password credentials in the local web.config

## Solution Components

### Web App

Web interface which will be used to update the car list

#### Running CTS Web App

1 In the Solution Explorer, right click on CTS Web App and Debug

#### Publishing CTS Web App to Azure

You must sign into Visual Studio before proceeding to the steps below.

1 In the Solution Explorer, right click on CTS Web App and Publish
2 Select Create New, then click Create Profile
3 Fill the required fields, then Create
4 Log in to https://portal.azure.com/ and click on App Services in the left panel to see your deployment

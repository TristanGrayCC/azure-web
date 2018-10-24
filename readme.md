# Azure Web App

## Story

CarMart UK has a basic website allowing customers to view a list of cars they have available for sale.

As the business has grown, the company has seen an increase in the cost of purchasing and managing their server environment to keep up with spikes in traffic. They also struggle to deploy application changes reliably across their fleet of servers.

They need a scalable solution, with a CI/CD pipeline to improve delivery cadence.

## Technology

The company wishes to continue using their ASP.NET web application as is, but do not want to manage their own servers or IIS instances. They have chosen Azure Web Apps to host the application as it should port easily, while offering reduced maintenance and cost-effective scalability.

## Getting Started

1. Fork and clone this repository
1. Open `src\CTS Web App.sln` in Visual Studio 2017
1. Restore NuGet packages
1. Build the solution and press `F5` to debug and validate it works

## Goal

Build a CI/CD pipeline that will build, test and deploy the application in a safe and repeatable way. The pipeline should:

- Be triggered by source control
- Execute all included unit tests
- Publish to a staging environment
- Once the app has been verified in staging, swap the staging and production environments

## Change Scenario

To test the pipeline, a simple change should be committed to the application's repository. You could, for example, add a new column called `VIN  Number`, with validation to confirm it is an 8 digit numeric value.

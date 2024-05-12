# Laravel Project Setup Guide

This guide outlines the steps to set up a Laravel project, including changing environment variables, configuring the database, running seeders for mock data, and integrating with Postman.

## Clone the Laravel Project

Clone the Laravel project from your repository:

git clone https://github.com/Yenaya-L-Kumarasekara/pharmacy_api.git

## Install Dependencies

cd pharmacy_api
composer install

## Set Up Environment Variables


cp .env.example .env

Edit the .env file and set up your environment variables, including database connection details, API keys, and any other necessary configurations.


## Generate Application Key

php artisan key:generate

## Migrate the database with mwb architecture or with sql

## Run Seeders

php artisan db:seed


## Install Postman

If not already installed, download and install Postman from postman.com.

## Configure Postman

Open Postman and navigate to the environment settings. Add a new environment and set the base URL to your server URL.

## Run the Application

php artisan serve

## Test API Endpoints

Use Postman to test your API endpoints by sending requests to the server using the configured environment.
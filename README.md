# Salesforce DX - WIT Kolkata
Salesforce Developer Experience (‘SFDX’ or just ‘DX’) is a set of tools designed to improve the traditional developer’s experience of building on the platform. 

## Agenda

* Before We Start
* Salesforce DX
* Force Commands
* Auth Commands
* Live Demo
* Q & A

## Before We Start

* Both the speaker and the host are organizing this meet-up in individual capacity only. We are not representing our companies here.
*  This presentation is strictly for learning purposes only. Organizer/Presenter do not hold any responsibility that same solution will work for your business requirements.
* This presentation is not meant for any promotional activities. 
* You are accountable for your solutions if that is not working for your business use case.

## Salesforce DX

Salesforce Developer Experience (‘SFDX’ or just ‘DX’) is a set of tools designed to improve the traditional developer’s experience of building on the platform. 

### Features

* The Salesforce CLI
* IDE
* DevHub & Scratch Org
* Second Generation Package
* Salesforce DevOps
* Etc.

## Commands

Salesforce DX Provides the various commond in order to provide the better Developer Experience for admin and developers. Here are categories for the same

* Alias
* Auth
* Config
* Force
* info

## Force Commands!

Force commands are used to develop on the Salesforce Platform and most of the time you as a developer will be working with these commands.

#### Force commands are used to perform the tasks

* Create Project
* Retrieve/Deploy the metadata
* Setup User
* Create the Metadata Components like Apex, LWC & etc.
* Create the 2G Package
* Used in DevOps
* Manage Data
* etc

````
1. Create Project
	sfdx force:project:create --projectname mywork
	sfdx force:project:create --projectname mywork --defaultpackagedir myapp
	sfdx force:project:create --projectname mywork --defaultpackagedir myapp --manifest
	sfdx force:project:create --projectname mywork --template empty
````

````
--------------------- SFDX Force User Commands ----------------------------------

1. Create User
	sfdx force:user:create

	sfdx force:user:create -a testuser1 -f config/project-user-def.json profileName='Chatter Free User'

	sfdx force:user:create username=testuser1@my.org email=me@my.org permsets=DreamHouse

	sfdx force:user:create -f config/project-user-def.json email=me@my.org generatepassword=true
	
2. List all users
	sfdx force:user:list
	
3. Generate Password
	sfdx force:user:password:generate

	sfdx force:user:password:generate -l 12

	sfdx force:user:password:generate -c 3

	sfdx force:user:password:generate -u me@my.org --json

	sfdx force:user:password:generate -o "user1@my.org,user2@my.org,user3@my.org"
	
4. Assign permission set
	sfdx force:user:permset:assign -n "DreamHouse, LargeDreamHouse"

	sfdx force:user:permset:assign -n DreamHouse -u me@my.org

	sfdx force:user:permset:assign -n DreamHouse -o "user1@my.org,user2,user3"
	
````

```` 
------------------------- Force Apex Commands -----------------------------------

1. Create Apex Class - sfdx force:apex:class:create -n MyClass
2. Execure Apex Code - 

sfdx force:apex:execute 
Start typing Apex code. Press the Enter key after each line, then press CTRL+D when finished.

````

````
---------------------- Force Lightning Commands -------------------------------------

1. Create LWC - sfdx force:lightning:component:create -n mycomponent --type lwc
2. Create LWC - sfdx force:lightning:component:create -n mycomponent --type lwc -d lwc

3. Test Setup: sfdx force:lightning:lwc:test:setup
4. Create test cases 
	sfdx force:lightning:lwc:test:create -f force-app/main/default/lwc/rating/rating.js

````

### Deploy/Retriee Commands

````
------------------------ Force Source Commands -----------------------------------------------

Scratch Org
	Push : sfdx force:source:push
	Pull : sfdx force:source:pull
	
NoN-Scratch Org ( NON-DX Projects )
	sfdx force:source:deploy -p path/to/source
	sfdx force:source:deploy -m ApexClass
	sfdx force:source:deploy -m ApexClass:MyApexClass
	
----------------------- MD API Deploy Commands -----------------------------------

NoN Scratch ORG ( DX Projects )
	
Deploy: sfdx force:mdapi:deploy -d force-app/main/default
Status : sfdx force:mdapi:deploy:report

Retrieve : sfdx force:mdapi:retrieve

````

### Work with Data

````
--------------------- Data Commands ------------------------------------

-- SOQL - sfdx force:data:soql:query -q "SELECT Id, Name, Account.Name FROM Contact"
sfdx force:data:soql:query -q "SELECT Id, Name FROM Account WHERE ShippingState IN ('CA', 'NY')"

GET Single RECORD : sfdx force:data:record:get -s Account -i 0014x000014O3SiAAK

IMPORT DATA : sfdx force:data:tree:import -p ./data/data-plan.json

````

## Auth Commands

Auth Commands gives you the ability to authenticate salesforce using different mechanism. Like oAuth 2.0, JWT, etc.

````	
--------------------- Auth Commands -------------------------------

1. Web Login : sfdx auth:web:login -r https://login.salesforce.com -a myorg -d -s
2. JWT Commands : sfdx auth:jwt:grant -u me@acme.org -f <path to jwt key file> -i <OAuth client id> -r https://acme.my.salesforce.com

sfdx auth:jwt:grant --clientid 3MVG9szVa2Rx_sqBb444p50Yj --jwtkeyfile ./keys/server.key --username amitsingh@utils.com.dev --instanceurl https://login.salesforce.com
````

## SFDX RESOURCES

https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm

## SF ( UNIFIED SALESFORCE CLI )
https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference_unified.htm

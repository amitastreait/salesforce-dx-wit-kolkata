call sfdx:force:org:list
set /p orgName="Enter the name of the org you want to use: "
echo Org Name: %orgName%
echo "Org Name is: %orgName%" >> log.txt
echo "Creating Scratch Org"
call sfdx force:org:create -s -f config/project-scratch-def.json -a %orgName% -d 30
echo "Generating Password"
call sfdx force:user:password:generate -u %orgName% --json -l 12
echo "Pushing the code into the org"
call sfdx force:source:push -u %orgName%
echo "Assigning Permissions"
call sfdx force:user:permset:assign -n Password_Never_Expires -u %orgName%
echo "Import the data"
call sfdx force:data:tree:import -p ./data/data-plan.json -u %orgName%
echo "Opening the org"
call sfdx force:org:open -u %orgName%
echo "Done"
echo "Done" >> log.txt
pause
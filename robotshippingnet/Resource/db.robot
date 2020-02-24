*** Settings ***
Library           DatabaseLibrary
Library           OperatingSystem
Library          SeleniumLibrary          
Suite Setup         Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown          Sleep 2s
 

*** Variables ***
${DBHost}         10.6.3.61
${DBName}         shipping
${DBPass}         P@ssw0rd
${DBPort}         3306
${DBUser}         root

*** Test Cases ***
Select DB
Retrieve Row Count
    [Tags]    db    smoke
    ${output} =    Row Count    SELECT UID FROM tab_user;
    Log    ${output}
    Should Be Equal As Strings    ${output}    43
*** Settings ***
Library           DatabaseLibrary
Library           OperatingSystem
Library          SeleniumLibrary
Resource        ../Resource/Login.robot
Resource        ../Resource/config.robot        

#Suite Setup     Run Keywords        Goble Login
#...             AND     Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Setup     Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown      Close All Browsers 

*** Variables ***
${DBName}       shipping    
${DBUser}       root
${DBPass}       P@ssw0rd
${DBHost}       10.6.3.61
${DBPort}       3306

*** Test Cases ***
Validate Moredetail1 Only
        config.Connect Database
        config.Import ShippingnetMoredetail1


# Validate Moredetail2
#         config.Connect Database
#         config.Import ShippingnetMoredetail1
   
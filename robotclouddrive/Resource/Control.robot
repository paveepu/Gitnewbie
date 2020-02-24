*** Settings ***
Library             SeleniumLibrary
Library             String
Resource            ../Resource/Login.robot
Resource            ../Resource/function.robot
#Resource            ../Resources/logout.robot
Suite Setup         Run Keywords   Goble Login
...                 AND            sleep    2s
#Suite Teardown      Close Browser 
Suite Teardown      Sleep       2s

*** Test Cases ***

#คลิกเมนู Profile
 #   function.คลิกเมนู Profile

#Update User
#    function.UpdateUSER

#User Management
#    function.User Management

#Add Company
#    function.Add company

#Check Search Company
#    function.Check Search company


#Import Clouddrive
#    function.Clouddrive Import

#Global logout
#    function.Goble Logout

#Register Clouddrive
#    function.Register Clouddrive

#Goble Login 
#    Run Keywords     Goble Login

Validate User   
    function.Approve id
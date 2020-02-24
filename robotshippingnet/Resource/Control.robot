*** Settings ***
Library             SeleniumLibrary
Library             String
Resource            ../Resource/Login.robot
Resource            ../Resource/function.robot
#Resource            ../Resources/logout.robot
Suite Setup         Run Keywords   Register Clouddrive
...                 AND            sleep    2s
#Suite Teardown      Close Browser 
Suite Teardown      Sleep       2s

*** Test Cases ***

Import Normal   
    function.Register Clouddrive
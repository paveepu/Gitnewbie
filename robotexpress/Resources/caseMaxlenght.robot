*** Settings ***
Library             Selenium2Library
Library             String
Resource            ../Resources/login.robot
Resource            ../Page/Validate1.robot
Resource            ../Page/Validate2.robot
Suite Setup         Run Keywords   Goble Login
...                 AND            Choose menu Pre-Arrival Export    
...                 AND            Click Edit Botton First Reference 
...                 AND            Input Data Import Declaration Control Type Text
...                 AND            Clear Field List
Test Template       Template Condition Validate Expected
Suite Teardown      Close Browser 

# ...                 AND            Save Data Import Declaration 
# ...                 AND            Confirmed Save
# ...                 AND            Confirmed Save
*** Test Cases ***
#|------------------------------------------------|---------------------|--------------------------------|--------------------------|#
#|                   Case                         |        CaseName     |        xPath Field             |       Expected Value     |#
#|------------------------------------------------|---------------------|--------------------------------|--------------------------|#
Validate Control max length Vessel Name		              MaxLength         ${Im_VesselName}                   35

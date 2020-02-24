*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${BASE_URL}    http://202.60.194.196/master/SPN/
${BROWSER}     gc
${USERNAME}    pupu   
${PASSWORD}    pupuqa

*** Keyword ***
Goble Login 
    Open Browser     ${BASE_URL}       ${BROWSER}  
    Set Window Size   1920   1440
    Set Selenium Speed  0.3 seconds  
    Wait Until Element Is Visible      //input[@name="USERNAME"]    timeout=10
    Input Text    //input[@name="USERNAME"]    ${USERNAME}
    Input Text    //input[@name="PASSWORD"]    ${PASSWORD}
    #Click Element    //button[@id="go"]
    Click Element    //area[@href="#"]

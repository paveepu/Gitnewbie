*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${BASE_URL}    http://localhost:4200/#/login
${BROWSER}     gc
${USERNAME}    sorrapong   
${PASSWORD}    1234

*** Keyword ***
Goble Login 
    Open Browser     ${BASE_URL}       ${BROWSER}  
#    Set Window Size   1920   1440
    Set Selenium Speed  0.3 seconds  
    Wait Until Element Is Visible      //input[@name="username"]    timeout=10
    Input Text       //input[@name="username"]      ${USERNAME}
    Input Text       //input[@name="password"]      ${PASSWORD}
    Click Element    //button[@id="login"]

### 1 Control Teast Case and 10 Sub Test Case ####
*** Settings ***
Library         Selenium2Library
Library         String
Library         FakerLibrary
Resource        Validate2.robot

*** Keyword ***
Choose menu Pre-Arrival Export
     Wait Until Element Is Visible      //*[@id="dropdownMenu_9"]/span    timeout=10
     Click Element                       id:dropdownMenu_9
     Sleep       2s
Click Edit Botton First Reference
     Click Element    name:edit_ref_1
     Sleep      2s
Clear Field List
    Clear Element Text      name:flightNo
    Sleep       2s
Template Condition Validate Expected 
     [Arguments]                    ${CaseValidate}            ${xpathField}            ${expectedLenght}
     ${statusCaseMaxLength}=        Run Keyword And Return Status         Check Status Case ImpControl Max Length         ${CaseValidate}           
    # ${statusCaseNumberic}=         Run Keyword And Return Status         Check Status Case ImpControl Numberic Only      ${CaseValidate}

    Run Keyword If      ${statusCaseMaxLength}==True         Run keyword       Validate Case ImpControl Max Length         ${xpathField}        ${expectedLenght} 
    #...         ELSE IF    ${statusCaseNumberic}==True       Run keyword       Validate Case ImpControl Numberic Only      ${xpathField}        
    #...                      ELSE     Run keyword            Validate Case ImpControl Alphabet Only      ${xpathField}             
Validate Case ImpControl Max Length
     [Arguments]             ${xpathField}          ${expectedLenght}
     ${LenghtActual}=        Get Value              ${xpathField} 
     Run Keyword And Continue On Failure     Length Should Be	   ${LenghtActual}          ${expectedLenght}     
Check Status Case ImpControl Max Length
     [Arguments]          ${CaseValidate}
     Should Be Equal         MaxLength              ${CaseValidate}

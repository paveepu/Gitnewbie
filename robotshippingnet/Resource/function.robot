*** Settings ***
Library         SeleniumLibrary
Library         String
#Library         FakerLibrary

*** Variables ***

*** Keyword ***
Register Clouddrive  
     
    Click Link    //a[@href="http://202.60.194.196/master/IE5DEV.shippingnet/data_defaulttemplate.php?UID=324&UCODE=CQfbB8yczn86j93uweqaRDBKglVMYOm2R8UDJdDTCYXwS4iEPbUSfU9&SERVICENAME=importdeclarationcontrol"]
    Sleep   10s

    
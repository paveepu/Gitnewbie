### 1 Control Teast Case and 10 Sub Test Case ####
*** Settings ***
Library         Selenium2Library
Library         String
Library         FakerLibrary

*** Variables ***
${Im_flightNo}               //input[@name="flightNo"]

*** Keyword ***     
Input Data Import Declaration Control Type Text
     # DataSources-EEC-Type-I.Import Data Source Document Type I CSV File 
     ###############################################################
     #                       Fake Data                             #
     ###############################################################
     ${FIm_flightNo}=               Generate Random String       36        [LETTERS]  

     ###############################################################
     #                 Input variable fake data                    #
     ###############################################################        
     Input Text             ${Im_flightNo}               ${FIm_flightNo}
     
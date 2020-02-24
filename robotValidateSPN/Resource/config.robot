*** Settings ***
Library             Collections
Library             String
Library             OperatingSystem
Library             SeleniumLibrary 
Library             BuiltIn            

*** Variable ***
${DBName}       shipping    
${DBUser}       root
${DBPass}       P@ssw0rd
${DBHost}       10.6.3.61
${DBPort}       3306
${BROWSER}      gc
${id}           1
${RefNo}        ASEM901001807
${Element1}     ลงชื่อผู้ตรวจสอบ
${InNO}         Deducted1           
*** Keywords ***

Connect Database
    #Check If Exists In Database     select USERNAME from tab_user where username = 'pupu'     
    ${USE} =        Query           select UCODE from tab_user where username = 'pupu';
    #Log Many        @{queryResults}  
    #${USE} =             Set Variable           @{queryResults}
    ${USE} =        Convert To String           ${USE[0][0]}                                                 
    Set Global Variable     ${USE} 


Import ShippingnetMoredetail1
    ${ImDclCtrl}=       Query           Select ImDclCtrl from importdeclarationcontrol where referenceno= '${RefNo}'
    ${ImDclCtrl}        Convert To String       ${ImDclCtrl[0][0]}
    Open BROWSER        http://202.60.194.196/master/IE5DEV.shippingnet/data_defaulttemplate.php?UID=324&UCODE=${USE}&SERVICENAME=importdeclarationcontrol&ACTION=WORKSPACE&SELITEM=ImDclCtrl:${ImDclCtrl}      gc
    Set Window Size   1920   1440
    Click Element       xpath://*[@id="dm0"]/ui/li[1]/a/span
    Select Frame        name=detailfrm
    Clear Element Text      name=ins_moredetail2
    Input Text          name=ins_moredetail1        123456789
    Click Element       name=Submit
    UnSelect Frame
    Click Element       xpath://*[@id="outLineTree"]/font/div/table/tbody/tr[1]/td/div/font/b/span
    ${CIF}=         Query           select cifValueBaht from importdeclarationcontrol where referenceNo = '${RefNo}'
    ${CIF}=          Convert To String       ${CIF[0][0]}
    Open BROWSER        http://202.60.194.196/master/IE5DEV.shippingnet/data_defaulttemplate.php?UID=324&UCODE=${USE}&SERVICENAME=importdeclarationcontrol&ACTION=VALIDATE&DOC=import&DOCID=${ImDclCtrl}&cifValueBahtDetail=${CIF}      gc
    ${Element1}=        Convert To String       ${Element1}
    Log To Console      ${Element1}            
    Wait Until Element Contains         xpath:/html/body/table[6]/tbody/tr/td[2]/table/tbody/tr[1]/td/font/b/font       ตรวจสอบความยาวตัวอักษรข้อมูลเพิ่มเติม
  #  Page Should Contain             ข้อมูลเพิ่มเติม 1 ให้ Key ได้เพียง 8 หลัก ข้อมูลเพิ่มเติม 2 ให้ Key ได้เพียง 6 หลัก   10s
#${InNO}=        Query           select invoiceNo from importdeclarationcontrolinvoice	where refNo = '${RefNo}' order by invoiceNo
    #Log To Console      select invoiceNo from importdeclarationcontrolinvoice where refNo = '${RefNo}' order by invoiceNo  
    #${InNO}=        Decode Bytes To String   ${InNO[0][0]}      UTF-8		
    #Log To Console      ${InNO}
    #${InNO}=        Encode String To Bytes      ${InNO}     ASCII		    
    #Log To Console          ${InNO}        
    Page Should Contain             INVOICE NO : ${InNO} ITEM NO : 0001     10s
    Page Should Contain             ข้อมูลเพิ่มเติม 1 กรอกได้เพียง 8 หลัก           10s
    Element Text Should Be               xpath:/html/body/table[6]/tbody/tr/td[1]    10s


# Import ShippingnetMoredetail2
#     ${ImDclCtrl2}=       Query           Select ImDclCtrl from importdeclarationcontrol where referenceno= '${RefNo}'
#     ${ImDclCtrl2}        Convert To String       ${ImDclCtrl2[0][0]}
#     Open BROWSER        http://202.60.194.196/master/IE5DEV.shippingnet/data_defaulttemplate.php?UID=324&UCODE=${USE}&SERVICENAME=importdeclarationcontrol&ACTION=WORKSPACE&SELITEM=ImDclCtrl:${ImDclCtrl2}      gc
#     Set Window Size   1920   1440
#     Click Element       xpath://*[@id="dm0"]/ui/li[1]/a/span
#     Select Frame        name=detailfrm
#     Clear Element Text      name=ins_moredetail1      
#     Input Text          name=ins_moredetail2        123456789
#     Click Element       name=Submit
#     UnSelect Frame
#     Click Element       xpath://*[@id="outLineTree"]/font/div/table/tbody/tr[1]/td/div/font/b/span
#     ${CIF}=         Query           select cifValueBaht from importdeclarationcontrol where referenceNo = '${RefNo}'
#     ${CIF}=          Convert To String       ${CIF[0][0]}
#     Open BROWSER        http://202.60.194.196/master/IE5DEV.shippingnet/data_defaulttemplate.php?UID=324&UCODE=${USE}&SERVICENAME=importdeclarationcontrol&ACTION=VALIDATE&DOC=import&DOCID=${ImDclCtrl2}&cifValueBahtDetail=${CIF}      gc
#     ${Element1}=        Convert To String       ${Element1}          
#     Page Should Contain            ตรวจสอบความยาวตัวอักษรข้อมูลเพิ่มเติม     10s 
#     Page Should Contain             ข้อมูลเพิ่มเติม 1 ให้ Key ได้เพียง 8 หลัก ข้อมูลเพิ่มเติม 2 ให้ Key ได้เพียง 6 หลัก   10s
#     ${InNO}=        Query           select invoiceNo from importdeclarationcontrolinvoice	where refNo = '${RefNo}' order by invoiceNo
#     ${InNO}=        Convert To String   ${InNO[0][0]}  
#     Page Should Contain             INVOICE NO : ${InNO} ITEM NO : 0001     10s
#     Page Should Contain             ข้อมูลเพิ่มเติม 2 กรอกได้เพียง 6 หลัก           10s



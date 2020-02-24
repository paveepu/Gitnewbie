*** Settings ***
Library         SeleniumLibrary
Library         String
#Library         FakerLibrary

*** Variables ***

*** Keyword ***
Register Clouddrive
    Sleep       2s
    Click Element       xpath://*[@id="loginForm"]/div[2]/div[3]/div[2]/a
    Input Text          name=email          paveepu@gmail.com
    Input Text          name=fristName          Pavee
    Input Text          xpath://*[@id="lastName"]           Rungruangbangchan
    Select From List By Value       name=companyID          362
    Input Text          name=tel            0909719764
    Click Element       xpath://*[@id="registerForm"]/div[2]/div[8]/div[2]/div[1]/div/label/div/ins
    Click Element       xpath://*[@id="submitBtn"]
    Sleep           10s


คลิกเมนู Profile
    Sleep      2s
    Click Element    xpath://*[@id="menu_3"]/a
    Element Text Should Be      id=email        jittraporn@netbay.co.th
  #  Element Text Should Be      id=tel          0835270795
  #  Element Text Should Be      id=fristname        jittraporn
  #  Element Text Should Be      id=lastname       wetmano
    Element Text Should Be      id=companyen        Netbay.co.th
    Element Text Should Be      id=companyth        เน็ตเบย์
    Element Text Should Be      id=taxno        0107557000101
    Element Text Should Be      id=branch       000000
    Element Text Should Be      id=branchname       yongtest
    Sleep      2s
    

UpdateUSER
    Click Element       id=update   
   # Input Text      id=fristname        jittraporn1
   # Element Text Should Be      id=fristname        jittraporn1 
    Sleep       1s
    Element Text Should Be      xpath:/html/body/div[4]/div[2]/h2       Update Success
    Click Element       class:confirm
    Sleep       2s


User Management
    Click Element       xpath://*[@id="menu_4"]/a
    Sleep       1s
    Select From List By Value       name=searchby        email     
    Select From List By Value       name=company        2792   
    Input Text      name=searchkey          p.rungruangbangchan@gmail.com
    Click Element       id=searchData
    Click Element       xpath://i[@class="fa fa-edit"]
    Clear Element Text      id=fristname
    Clear Element Text      id=lastname
    Input Text      id=fristname         Pavee
    Input Text      id=lastname          Rungruangbangchan  
    #Clear Element Text      id=fristname   
   # Sleep       10s
    Click Element       id=update
    Element Text Should Be          xpath:/html/body/div[5]/div[2]/h2          Update success
    Click Element       class=confirm
    Sleep       3s

Add company
    CLick Element       xpath://*[@id="menu_5"]/a
    Click Element       id=add
    Input Text     id=comNameEN         ThaiBeverage
    Input Text      id=comNameTH        ไทยเบเวอเรจ
    Input Text      id=comTaxNo         2499249924992
    Input Text      id=comBranch        00010001
    Input Text      id=comBranchName        จันทบุรี
    Input Text      id=address          7/11
    Input Text      id=maxUser          10
    Select From List By Value       name=status        Y
    Select From List By Value       name=adminmulti        Y
    Click Element       id=addcompany
    Sleep       3s

Check Search company
    CLick Element       xpath://*[@id="menu_5"]/a
    Select From List By Value    //select[@name="searchby"]    comnameEN
    Input Text      id=searchkey        ThaiBeverage
    Click Element       id=searchData
    Element Text Should Be      xpath://*[@id="dataspn"]/tr[1]/td[2]        ThaiBeverage
    Element Text Should Be      xpath://*[@id="dataspn"]/tr[1]/td[3]        ไทยเบเวอเรจ
    Element Text Should Be      xpath://*[@id="dataspn"]/tr[1]/td[4]        2499249924992
    Element Text Should Be      xpath://*[@id="dataspn"]/tr[1]/td[5]        000100
    Element Text Should Be      xpath://*[@id="dataspn"]/tr[1]/td[6]        Y  
    Sleep       2s


Clouddrive Import
    Click Element       xpath://*[@id="menu_114"]/a
    Input Text      name=dateFrom       01-07-2019
    Input Text      name=dateTo          02-01-2020
    Select From List By Value          xpath://*[@id="searchby"]        refno
    Input Text      id=searchinv        ASEM000000403
    Sleep       1s
    Click Element       xpath://*[@id="example1"]/tbody/tr/td[5]/i[1]
    

Goble Logout 
    Click Element    xpath://*[@id="header"]/nav/div[3]/ul[2]/li/a
   # //*[@id="menu_3"]/a
    Sleep      2s

Approve id
    Click Element       xpath://*[@id="menu_4"]/a
    Select From List By Value        xpath://*[@id="searchby"]           email
    Input Text                  xpath://*[@id="searchkey"]              paveepu@gmail.com
    Click Element               xpath://*[@id="searchData"]
    Click Element               xpath://*[@id="dataspn"]/tr[1]/td[1]/button         
    Select From List By Value       name=status             Y
    Click Element               xpath://*[@id="update"]
    Sleep       3s   



### 1 Control Teast Case and 10 Sub Test Case ####
*** Settings ***
Library         SeleniumLibrary
Library         String
#Library         FakerLibrary

*** Variables ***

*** Keyword ***
คลิกเมนู Pre-Arrival Export
     Click Element                       id:dropdownMenu_9
     Sleep       3s

ตรวจสอบปุ่ม Send to custom กรณีไม่ระบุ reference
     Element Text Should Be             id:swal2-content         ไม่มี reference ที่เลือก
     Click Element                      xpath=/html/body/div/div/div[3]/button[1]
     Sleep     2s 

ตรวจสอบปุ่ม Print Permit กรณีไม่ระบุ reference
     Element Text Should Be             id:swal2-content         ไม่มี reference ที่เลือก
     Click Element                      xpath=/html/body/div/div/div[3]/button[1]
     Sleep     2s

ตรวจสอบปุ่ม Export to SPN กรณีไม่ระบุ reference
     Element Text Should Be             id:swal2-content         ไม่มี reference ที่เลือก
     Click Element                      xpath=/html/body/div/div/div[3]/button[1]
     Sleep     2s

ตรวจสอบปุ่ม Send to custom กรณีระบุ reference
     Click Element                      Name:send_to_custom
     Sleep     2s
     Element Text Should Be             id:swal2-title         Send Success
     Sleep     10s

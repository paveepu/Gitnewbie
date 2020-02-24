*** Settings ***
Library             SeleniumLibrary
Library             String
Resource            ../Resources/login.robot
Resource            ../Page/function.robot
#Resource            ../Resources/logout.robot
Suite Setup         Run Keywords   Goble Login
...                 AND            sleep    2s
Suite Teardown      Close Browser 
#Suit Teardown       Run Keywords    Goble Logout 

# ...                 AND            Save Data Import Declaration 
# ...                 AND            Confirmed Save
# ...                 AND            Confirmed Save
*** Test Cases ***
#ตรวจสอบหน้าจอ Pre-Arrival Export
#    PAGE01-1_PreArrival_Export.คลิกเมนู Pre-Arrival Export
#    PAGE01-1_PreArrival_Export.ตรวจสอบปุ่ม Creat Reference ต้องแสดงที่หน้าจอ

#ตรวจสอบข้อความแจ้งเตือนการะบุค่า Port of Loading
#   Click Element    name:create_new_ref
#    Input Text       name:portofload             ก
#    PAGE01-1_PreArrival_Export.ตรวจสอบข้อความกรุณาระบุตัวเลขให้ครบ 4 หลักต้องแสดงที่หน้าจอ

#ตรวจสอบข้อความแจ้งเตือนการะบุค่า Released Port
#    Input Text       name:releasedport             O
#    PAGE01-1_PreArrival_Export.ตรวจสอบข้อความกรุณาระบุตัวเลขให้ครบ 4 หลักต้องแสดงที่หน้าจอ

#ตรวจสอบการส่งกรมแบบไม่เลือก Reference
#   PAGE01-1_PreArrival_Export.คลิกเมนู Pre-Arrival Export
#    Click Element        name:send_to_custom
#    PAGE01-1_PreArrival_Export.ตรวจสอบการกดปุ่มแบบไม่เลือก Reference
    
#ตรวจสอบการ Manual Response ไม่เลือก Reference
#    PAGE01-1_PreArrival_Export.คลิกเมนู Pre-Arrival Export
#    Click Element        name:manual_response
#    PAGE01-1_PreArrival_Export.ตรวจสอบการกดปุ่มแบบไม่เลือก Reference

#ตรวจสอบการ Copy แบบไม่เลือก Reference 
#    PAGE01-1_PreArrival_Export.คลิกเมนู Pre-Arrival Export
#    Click Element        name:copy_ref
#    PAGE01-1_PreArrival_Export.ตรวจสอบการกดปุ่มแบบไม่เลือก Reference

#ตรวจสอบการ Delete แบบไม่เลือก
#    PAGE01-1_PreArrival_Export.คลิกเมนู Pre-Arrival Export
#    Click Element        name:delete_ref
#   PAGE01-1_PreArrival_Export.ตรวจสอบการกดปุ่มแบบไม่เลือก Reference

คลิกเมนู Pre-Arrival Export
    function.คลิกเมนู Pre-Arrival Export

#ตรวจสอบปุ่ม Send to custom กรณีไม่ระบุ reference
#        Click Element                      id:send_to_custom
#        Sleep   2s
#        function.ตรวจสอบปุ่ม Send to custom กรณีไม่ระบุ reference

#ตรวจสอบปุ่ม Print Permit กรณีไม่ระบุ reference
#        Click Element                      id:print_permit
#        Sleep   2s
#        function.ตรวจสอบปุ่ม Print Permit กรณีไม่ระบุ reference

#ตรวจสอบปุ่ม Export to SPN กรณีไม่ระบุ reference
#        Click Element                       id:export_to_spn
#        Sleep   2s
#        function.ตรวจสอบปุ่ม Export to SPN กรณีไม่ระบุ reference      
ตรวจสอบปุ่ม Send to custom กรณีระบุ reference
        Click Element                       xpath=/html/body/app-root/app-mainmenu/div/app-express-export/div/div[3]/div/table/tbody/tr[1]/td[1]/label/span
        Sleep   2s
        function.ตรวจสอบปุ่ม Send to custom กรณีระบุ reference
        Sleep   2s



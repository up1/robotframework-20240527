*** Settings ***
Library          SeleniumLibrary
Test TearDown    Close Browser

*** Test Cases ***
Hello
    เข้ามายังหน้าค้นหาของ google
    ทำการค้นหาคำว่า hello 
    ตรวจสอบผลการค้นหาที่ถูกต้อง

*** Keywords ***
ตรวจสอบผลการค้นหาที่ถูกต้อง
    Wait Until Page Contains    Longdo Dict
    Wait Until Element Contains    
    ...    xpath://*[@id="rso"]/div[2]/div[2]/div/div/div[1]/div/div/span/a/div/div/div/div[1]/span
    ...    Longdo Dict

เข้ามายังหน้าค้นหาของ google
    Open Browser    url=http://www.google.com    browser=chrome
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

ทำการค้นหาคำว่า hello 
    Input Text    name:q   hello
    Press Keys    name:q    ENTER


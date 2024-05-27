*** Settings ***
Library          SeleniumLibrary
Test TearDown    Close Browser

*** Variables ***
${URL}    http://www.google.com
${BROWSER}    chrome

*** Test Cases ***
Hello 01
    [Tags]  feature01   done
    เข้ามายังหน้าค้นหาของ google
    ทำการค้นหาคำว่า hello 
    ตรวจสอบผลการค้นหาที่ถูกต้อง

Hello 02
    [Tags]  feature01   testing
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
    Open Browser    url=${URL}    browser=${BROWSER}
    # ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

ทำการค้นหาคำว่า hello 
    Input Text    name:q   hello
    Press Keys    name:q    ENTER


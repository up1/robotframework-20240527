*** Settings ***
Library           SeleniumLibrary
Suite Setup       เปิด browser
Suite Teardown    Close Browser
Resource          ../pages/login.robot
Resource          ../pages/welcome.robot

*** Test Cases ***
Login success with username and password
    login.เข้ามายังหน้า login
    login.ตรวจสอบหน้า login
    login.ทำการกรอกข้อมูลด้วย username=demo และ password=mode
    welcome.ตรวจสอบ login success

Login success with username and password 2
    login.เข้ามายังหน้า login
    login.ตรวจสอบหน้า login
    login.ทำการกรอกข้อมูลด้วย username=demo และ password=mode
    welcome.ตรวจสอบ login success

*** Keywords ***
เปิด browser
    Open Browser  about:blank    browser=chrome
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window
*** Settings ***
Library           SeleniumLibrary
Resource          ../pages/login.robot

*** Test Cases ***
Login success with username and password
    Open Browser  about:blank    browser=chrome
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    login.เข้ามายังหน้า login
    login.ตรวจสอบหน้า login
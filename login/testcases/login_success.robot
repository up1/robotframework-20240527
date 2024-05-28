*** Settings ***
Library           SeleniumLibrary
Resource          ../pages/common.robot
Resource          ../pages/login.robot
Resource          ../pages/welcome.robot
Suite Setup       common.Open Browser
Suite Teardown    SeleniumLibrary.Close Browser


*** Test Cases ***
Login success with username and password
    login.เข้ามายังหน้า login
    login.ตรวจสอบหน้า login
    SeleniumLibrary.Capture Page Screenshot
    login.ทำการกรอกข้อมูลด้วย username=demo และ password=mode
    welcome.ตรวจสอบ login success
    Capture Page Screenshot

Login success with username and password 2
    login.เข้ามายังหน้า login
    login.ตรวจสอบหน้า login
    login.ทำการกรอกข้อมูลด้วย username=demo และ password=mode
    welcome.ตรวจสอบ login success

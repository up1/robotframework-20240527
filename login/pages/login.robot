*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
เข้ามายังหน้า login
    Go To  https://demo-login-workshop.vercel.app/

ตรวจสอบหน้า login
    Wait Until Element Contains  id:login_header  Login Page 111111

ทำการกรอกข้อมูลด้วย username=${username} และ password=${password}
    Input Text  xpath://*[@data-test="username_field"]  ${username}
    Input Text  xpath://*[@data-test="password_field"]  ${password}
    Click Element  xpath://*[@data-test="login_button"]

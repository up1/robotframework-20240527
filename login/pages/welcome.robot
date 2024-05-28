*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
ตรวจสอบ login success
    Wait Until Element Contains  xpath://*[@data-test="page_name"]  
    ...  Welcome Page
    Wait Until Element Contains  xpath://*[@data-test="result"]  
    ...  Login succeeded. Now you can logout.

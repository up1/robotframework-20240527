*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Try 01
    Open Browser    url=https://efiling.rd.go.th/rd-cms/    browser=chrome
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window
    
    Wait Until Element Is Visible   id:announceModal
    Click Element   xpath://*[@id="announceModal"]/div/div/div[2]/div/div[2]/span/a[1]

    Wait Until Page Contains   ช่วงเวลาการให้บริการของแต่ละช่องทาง
*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Hello
    Open Browser    http://www.google.com    chrome
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Input Text    name=q    hello
    Press Keys    name=q    ENTER
    Close Browser
*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Browser
    SeleniumLibrary.Open Browser  about:blank    browser=chrome
    ...    options=add_experimental_option("detach", True)
    ...    remote_url=http://152.42.254.220:4444/wd/hub
    Maximize Browser Window
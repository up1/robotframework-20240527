*** Variables ***
${MY_DATA}    My data "somkiat" is id= "1234"

*** Test Cases ***
Check with regular expression
    Should Match Regexp   ${MY_DATA}    My data "([^"]+)" is id= "(\\d+)"
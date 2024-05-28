*** Settings ***
Library    FakerLibrary

*** Test Cases ***
FakerLibrary Words Generation
    FOR    ${index}    IN RANGE    10
        ${fname}=    First Name
        ${cc}=  Credit Card Number
        ${expire}=   Credit Card Expire
        Log to console   ${fname},${cc},${expire}
    END
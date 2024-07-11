*** Settings ***
Resource         ./TC_1_KyeWord.robot


Library    Process

*** Test Cases ***
Sinario: Login With Email ANd Password
    [Tags]    Pass
    Open the chrome
    Check that home page is displayed
    Check That login Button Is displayed
    Click on Login Button
    Sleep    2
    check That Continue with Email is Displayed
    Click On Continue with Email button
    Sleep    2
    Enter Email on Email field
    Enter password on pass field
    Check That Login Button is visible
    Check That User is logedin
    Close Browser

sinario: check search Option is working properly
    [Tags]    Pass
    Open the chrome
    check that search options is displayed
    click on search options
    CLICK ON SUBMIT OPTION
    check that items is displayed
    Sleep    3
    Close Browser

Sinario: check Browse items by category work properly
    Open the chrome
    check Browse items by category is displayed
    check that frist category item is displayed
    clcik on frist category item
    check that items is displayed
    Sleep    3
    Close Browser
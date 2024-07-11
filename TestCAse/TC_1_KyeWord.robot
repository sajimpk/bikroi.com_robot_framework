*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://bikroy.com/

${Email}    fuzzyaidan@fthcapital.com
${password}    fuzzyaidan@


###################################################################### user Variables ##################################

${cate_frist}    xpath://div[@class='section--3qPXi category-container--1RreD']//li[1]
${login}    Xpath://button[normalize-space()='Login']
${login_nav}    xpath://a[@aria-label='Login']
${get_email_login}    xpath://button[@class='btn--1gFez secondary--Os-e9 background--2lR9B small--1MQ15 button--eCUEQ gtm-email-login']
${search_box}    class:search-input--PtfH8
${submit_button}    xpath://button[@type='submit']



*** Keywords ***
Open the chrome
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Check that home page is displayed
    Title Should Be    Bikroy - Electronics, Cars, Property and Jobs in Bangladesh

Check That login Button Is displayed
    Page Should Contain Element    ${login_nav}

Click on Login Button
    Click Link    ${login_nav}

check That Continue with Email is Displayed
    Element Should Be Visible    ${get_email_login}

Click On Continue with Email button
    Click Button    ${get_email_login}

Enter Email on Email field
    Element Should Be Visible    name:email
    Input Text    name:email    ${Email}
Enter password on pass field
    Sleep    3
    Input Text    name:password    ${password}

Check That Login Button is visible
    Element Should Be Visible    ${login}
    Sleep    1
    Click Button    ${login}

Check That User is logedin
    Page Should Contain    My account


#### Sinario 2
check that search options is displayed
    Element Should Be Visible    ${search_box}

click on search options
    Input Text    ${search_box}    LAPTOP

CLICK ON SUBMIT OPTION
    Click Element    ${submit_button}

Check that search item is displayed
    Page Should Contain    in Bangladesh

# sinario 3

check Browse items by category is displayed
    Page Should Contain    Browse items by category

check that frist category item is displayed
    Page Should Contain Element    ${cate_frist}

clcik on frist category item
    Click Element    ${cate_frist}

check that items is displayed
    Page Should Contain    Showing
    execute javascript  window.scrollTo(0,200)
    Sleep    2
    execute javascript  window.scrollTo(200,400)
    Sleep    2
    execute javascript  window.scrollTo(400,600)
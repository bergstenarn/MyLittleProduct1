*** Settings ***
Library  Selenium2Library

*** Variables ***
${COMPANY LOGO}  xpath=//*/div[1][@class='logo']/a/span[contains(text(),'Adlibris')]

*** Keywords ***
Load
    Go To  ${LANDING PAGE}

Verify Page Loaded
    Wait Until Page Contains Element  ${COMPANY LOGO}

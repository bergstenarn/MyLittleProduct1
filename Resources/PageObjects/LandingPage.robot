*** Settings ***
Library  Selenium2Library

*** Variables ***
#${COMPANY LOGO}  //*/div[1][@class='logo']/a/span[contains(text(),'Adlibris')]
${COMPANY LOGO}  //*/div[1][@class='logo']/a/span[text()='Adlibris' and @class='logo-img logo-sv']

*** Keywords ***
Load
    Go To  ${LANDING PAGE}

Verify Page Loaded
    Wait Until Page Contains Element  xpath=${COMPANY LOGO}
    ${match count} =  Get Matching Xpath Count  ${COMPANY LOGO}

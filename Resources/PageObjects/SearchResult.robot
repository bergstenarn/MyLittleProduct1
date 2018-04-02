*** Settings ***
Library  Selenium2Library

*** Variables ***
${SEARCHRESULT FIRST ITEM}     css=#result_0 a.s-access-detail-page
${SEARCH SUCCESS TAG}          //*[@id="search"]//span[starts-with(text(),'Din sökning gav totalt')]

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  xpath=${SEARCH SUCCESS TAG}
    ${match count} =  Get Matching Xpath Count  ${SEARCH SUCCESS TAG}

#Select Product
#    Click Link  ${SEARCHRESULT FIRST ITEM}

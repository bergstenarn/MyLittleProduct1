*** Settings ***
Library  Selenium2Library

*** Variables ***
${TOPNAVIGATIONBAR_SEARCH_BUTTON}     xpath=//*/div[@class='search-box-button']/button[@id='search-button']
${TOPNAVIGATIONBAR_SEARCH_FIELD}      xpath=//*/div[@class='search-box' and @id='search-box']/div/input[@id="q"]

*** Keywords ***
Enter Search Key
    Input Text  ${TOPNAVIGATIONBAR_SEARCH_FIELD}  ${SEARCH TERM}

Press Search Button
    Click Button  ${TOPNAVIGATIONBAR_SEARCH_BUTTON}

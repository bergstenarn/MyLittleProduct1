*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Sleep  2s
    Close Browser

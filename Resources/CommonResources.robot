*** Settings ***
Library  Selenium2Library

*** Keywords ***
Begin Web Test
   Open Browser  about:blank  ${BROWSER}
   Maximize Browser Window
   Sleep  2s

End Web Test
    Close Browser

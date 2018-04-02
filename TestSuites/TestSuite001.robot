*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Resource001.robot
Resource  ../Resources/CommonResources.robot
Test Setup  CommonResources.Begin Web Test
Test Teardown  CommonResources.End Web Test

# pybot -d Results TestSuites\TestSuite001.robot

*** Variables ***
${SEARCH TERM}  Isaac Asimov
${LANDING PAGE}  http://www.adlibris.se
${BROWSER}  chrome

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    Resource001.Search for Product
#    Resource001.Select Product from Search Results
#    Resource001.See All Buying Choices of the Product
#    Resource001.Add Product to Cart
#    Resource001.Begin Checkout

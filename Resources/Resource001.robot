*** Settings ***
Resource  ../Resources/PageObjects/LandingPage.robot
Resource  ../Resources/PageObjects/TopNavigationBar.robot
Resource  ../Resources/PageObjects/SearchResult.robot
#Resource  ../Resources/PageObjects/Product.robot
#Resource  ../Resources/PageObjects/BuyingChoices.robot
#Resource  ../Resources/PageObjects/Cart.robot
#Resource  ../Resources/PageObjects/SignIn.robot

*** Keywords ***
Search for Product
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNavigationBar.Enter Search Key
    TopNavigationBar.Press Search Button
    SearchResult.Verify Page Loaded

#Select Product from Search Results
#    SearchResult.Select Product
#    Product.Verify Page Loaded
#
#See All Buying Choices of the Product
#    Product.See All Buying Choices
#    BuyingChoices.Verify Page Loaded
#
#Add Product to Cart
#    BuyingChoices.Add First Buying Choice to Cart
#    Cart.Verify Page Loaded
#
#Begin Checkout
#    Cart.Press Checkout Button
#    SignIn.Verify Page Loaded

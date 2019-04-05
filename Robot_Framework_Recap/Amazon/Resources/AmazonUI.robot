*** Settings ***
Library    SeleniumLibrary
Resource    AmazonPO/LandingPage.robot
Resource    AmazonPO/TopNav.robot
Resource    AmazonPO/SearchResults.robot
Resource    AmazonPO/Product.robot
Resource    AmazonPO/Cart.robot
Resource    AmazonPO/SignIn.robot


*** Keywords ***
Go to Url
    LandingPage.Load
    
    
Click login button in topnav
    TopNav.Click login button
    
    
Login with valid credentials
    [Arguments]    ${email}    ${password}
    SignIn.Valid credentials    ${email}    ${password}
    
    
Login with invalid credentials
    [Arguments]    ${email}    ${password}
    SignIn.Invalid credentials    ${email}    ${password}
    
    
Search for products
    LandingPage.Verify page loaded
    TopNav.Search for products in topnav
    SearchResults.Verify search completed
    
    
Select product from search results
    SearchResults.Click product link
    Product.Verify page loaded
    
    
Add product to cart
    Product.Add to cart
    Cart. Verify product added   
    
    
Begin checkout
    Cart.Proceed to checkout
    SignIn.Verify page loaded
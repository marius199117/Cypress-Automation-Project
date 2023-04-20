Feature: UI - Complete checkout test case

    Background:
        Given I am on the 'https://www.saucedemo.com/' page
        When I enter in the 'email' field 'standard_user' data
        And I enter in the 'password' field 'secret_sauce' data
        And I click 'submitButton' button
        Then I verify that "succesfullyLoggedIn" is displayed

    Scenario: Complete checkout
        When I click 'addToCartSauceLabsBackpack' button
        And I click 'shoppingIcon' button
        And I click 'checkout' button
        And I enter in the 'firstName' field 'name' data
        And I enter in the 'lastName' field 'lastName' data
        And I enter in the 'postalCode' field '123456' data
        And I click 'next' button
        And I click 'finish' button
        Then I verify that "checkoutComplete" is displayed

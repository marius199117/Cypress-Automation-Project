Feature: UI - Add to cart test cases

    Background:
        Given I am on the 'https://www.saucedemo.com/' page
        When I enter in the 'email' field 'standard_user' data
        And I enter in the 'password' field 'secret_sauce' data
        And I click 'submitButton' button
        Then I verify that "succesfullyLoggedIn" is displayed

    Scenario: Item has successfully added to the cart
        When I click 'addToCartSauceLabsBackpack' button
        And I click 'shoppingIcon' button
        Then I verify that "cartSauceLabsBackpack" is displayed

    Scenario: Item has successfully removed from the cart
        When I click 'addToCartSauceLabsBackpack' button
        And I click 'shoppingIcon' button
        And I click 'removeSauceLabsBackpack' button
        Then I verify that "cartSauceLabsBackpack" is not displayed
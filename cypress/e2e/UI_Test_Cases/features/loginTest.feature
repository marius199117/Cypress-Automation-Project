Feature: UI - Login test cases

    Background:
        Given I am on the 'https://www.saucedemo.com/' page

    Scenario: Succesfull login
        When I enter in the 'email' field 'standard_user' data
        And I enter in the 'password' field 'secret_sauce' data
        And I click 'submitButton' button
        Then I verify that "succesfullyLoggedIn" is displayed

    Scenario: Unsuccesfull login
        When I enter in the 'email' field 'invalid_user' data
        And I enter in the 'password' field 'invalid_password' data
        And I click 'submitButton' button
        Then I verify that "unsuccesfullyLoggedIn" is displayed


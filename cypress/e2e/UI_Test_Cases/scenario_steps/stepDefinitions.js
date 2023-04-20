import { Given, When, Then} from 'cypress-cucumber-preprocessor/steps'
import * as locators from '../page_objects/locators'
const BasePage = require('../page_objects/basePage');
const basePage = new BasePage();

Given('I am on the {string} page', (url) => {
    basePage.visit(url);
  });

When('I enter in the {string} field {string} data', (locator, data) => {
  basePage.addTextToField(locators[locator], data)
});

And('I click {string} button', (locator) => {
  basePage.click(locators[locator])
});

Then('I verify that {string} is displayed', (locator) => {
  basePage.elementIsDisplayed(locators[locator])
});

Then('I verify that {string} is not displayed', (locator) => {
  basePage.elementIsNotDisplayed(locators[locator])
});


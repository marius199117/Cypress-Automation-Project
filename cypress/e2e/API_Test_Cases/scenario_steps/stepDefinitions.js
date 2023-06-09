import { Given, When, Then} from 'cypress-cucumber-preprocessor/steps'
const BasePage = require('../page_objects/basePage');
const basePage = new BasePage();


Given('the API {string} is available', (url) => {
  basePage.visit(url)
})

When('I send a {string} request to the {string} with body {string}', (request_type, endpoint, body) => {
  basePage.sendRequest(request_type, endpoint, body)
});

Then('the response should have a status code of {int}', (status_code) => {
  basePage.verifyStatusCode(status_code)
});

Then('the response should contain a matched {string} Json', (matchString) => {
  basePage.verifyContentType(matchString)
})

Then('the {string} should have property {string} with value {string}', (responseBody, property, value) => {
  basePage.verifyResponse(responseBody, property, value)
})

Then('verify response body {string}', (body) => {
  basePage.response(body)
})
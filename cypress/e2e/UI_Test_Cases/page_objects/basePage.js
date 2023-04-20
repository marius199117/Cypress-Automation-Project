class BasePage { 

  visit(path) {
    cy.visit(path)
  }

  click(locator) {
    cy.get(locator).should('be.visible').click()
  }

  addTextToField(locator, text) {
    cy.get(locator).clear().type(text).should('have.value', text)
  }

  elementIsDisplayed(locator) {
    cy.get(locator).should('exist');
  }

  elementIsNotDisplayed(locator) {
    cy.get(locator).should('not.exist');
  }
}
module.exports = BasePage;
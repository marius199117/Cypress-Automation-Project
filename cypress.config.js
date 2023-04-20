const { defineConfig } = require('cypress')
const cucumber = require('cypress-cucumber-preprocessor').default;

module.exports = defineConfig({
  chromeWebSecurity: false,
  projectId: 's8op3q',
  e2e: {
    setupNodeEvents(on, config) {
      on('file:preprocessor', cucumber());
      return {on, config}
    },
    specPattern: 'cypress/e2e/**/*.{feature,features,spec.js,cy.js}'
  }
})

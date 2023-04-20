class BasePage {

  visit(url) {
    cy.visit(url)
  }

  sendRequest(request_type, endpoint, body) {
    switch (request_type) {
      case 'GET':
        cy.request({
          method: 'GET',
          url: endpoint,
        }).as('response')
        break
      case 'POST':
        cy.request({
          method: 'POST',
          url: endpoint,
          body: JSON.parse(body),
        }).as('response')
        break
      case 'PUT':
        cy.request({
          method: 'PUT',
          url: endpoint,
          body: JSON.parse(body),
        }).as('response')
        break
      case 'PATCH':
        cy.request({
          method: 'PATCH',
          url: endpoint,
          body: JSON.parse(body),
        }).as('response')
        break
      case 'DELETE':
        cy.request({
          method: 'DELETE',
          url: endpoint,
        }).as('response')
        break;
      default:
        throw new Error('Invalid request type')
    }
  }

  verifyStatusCode(status_code) {
    cy.get('@response').then((response) => {
      expect(response.status).to.eq(status_code)
    })
  }

  verifyContentType(matchString) {
    cy.get('@response').then((response) => {
      expect(response.headers['content-type']).to.match(new RegExp(matchString))
    })
  }

  response(body) {
    cy.get('@response').then((response) => {
      expect(response.body).to.deep.equal(JSON.parse(body))
    })
  }
}
module.exports = BasePage;
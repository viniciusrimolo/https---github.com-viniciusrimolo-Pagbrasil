const url = Cypress.config("baseUrl")

Cypress.Commands.add('acessarCadastro',() => {
    cy.visit({
        url: url,
        method: 'GET',
        failOnStatusCode: false
    })
})

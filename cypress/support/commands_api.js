
Cypress.Commands.add('contatoForm', (data) => {
  if (!data) {
    throw new Error('Dados não foram fornecidos para o formulário de contato.');
  }

  const payload = {
    name: data.Name,
    email: data.Email,
    company: data.Company,
    website: data.Website,
    phone: data.Phone,
    inquiry: data.Inquiry
  };
 return cy.api({
    method: 'POST',
    url: 'https://api.restful-api.dev', 
    body: payload,
   
    failOnStatusCode: false 
  }).then((response_post) => { return response_post })
  
});

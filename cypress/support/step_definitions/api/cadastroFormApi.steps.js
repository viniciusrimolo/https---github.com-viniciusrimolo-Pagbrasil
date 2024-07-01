import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

Given('que eu envio o formulário com os dados de cadastro {string} {string} {string} {string} {string} {string}', (Name, Email, Company, Website, Phone, Inquiry) => {
    const data = {
        Name: Name.trim(),
        Email: Email.trim(),
        Company: Company.trim(),
        Website: Website.trim(),
        Phone: Phone.trim(),
        Inquiry: Inquiry.trim()
    };

    cy.log(JSON.stringify(data));
    cy.contatoForm(data).as('contatoResponse');
});

Then(/^o status da resposta e 200 com possui sucesso true(.*)$/, () => {
    cy.get('@contatoResponse').then((response) => {
        expect(response.status).to.eq(200);
        expect(response.body).to.have.property('sucesso', true);
    });
});


Then(/^o status da resposta é 412 mensagem (.*)$/, (mensagem) => {
    cy.get('@contatoResponse').then((response) => {
        expect(response.status).to.eq(412);
        expect(response.body).to.have.property('sucesso', false);
        expect(response.body).to.have.property('erro', mensagem);
    });

});

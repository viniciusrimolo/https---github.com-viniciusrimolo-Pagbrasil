/// <reference types="Cypress"/>
import CadastroElements from "../elements/CadastroElements";

const cadastroElements = new CadastroElements()

class CadastroPage {

    acessarCadastro() {
        cy.acessarCadastro();
    }

    preencherCampoName(Name) {
        const fieldName = cadastroElements.fieldName();
        cy.get(fieldName)
            .type(Name)
            .invoke('val')
            .should('be.a', 'string')
            .and('have.length.lte', 255);
    }


    preencherCampoEmail(Email) {
        const fieldEmail = cadastroElements.fieldEmail();
        cy.get(fieldEmail)
            .type(Email)
            .invoke('val')
            .should('be.a', 'string')
            .and('have.length.lte', 150);
    }



    preencherCampoCompany(Company) {

        const fieldCompany = cadastroElements.fieldCompany();
        cy.get(fieldCompany)
            .type(Company)
            .invoke('val')
            .should('be.a', 'string')
            .and('have.length.lte', 200);
    }

    preencherCampoWebsite(Website) {

        const fieldWebsite = cadastroElements.fieldWebsite();
        cy.get(fieldWebsite)
            .type(Website)
            .invoke('val')
            .should('be.a', 'string')
            .and('have.length.lte', 200);


    }

    preencherCampoPhone(Phone) {

        const fieldPhone = cadastroElements.fieldPhone();
        cy.get(fieldPhone)
            .type(Phone)
            .invoke('val')
            .should('be.a', 'string')
            .and('have.length.lte', 15);
    }

    preencherCampoInquiry(Inquiry) {

        const fieldInquiry = cadastroElements.fieldInquiry();
        cy.get(fieldInquiry)
            .type(Inquiry)
            .invoke('val')
            .should('be.a', 'string')
            .and('have.length.lte', 500);

    }

    clicarBtnSubmit() {
        cy.contains('button', 'Submit').click();
    }

    validarMensagemCadastro(mensagem) {
        cy.get(cadastroElements.labelMessage())
            .should('have.text', mensagem)

    }
}
export default CadastroPage;
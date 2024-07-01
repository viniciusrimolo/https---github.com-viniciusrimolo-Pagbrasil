/// <reference types="Cypress"/>
import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import CadastroPage from "../../pages/cadastro-page";

const cadastroPage = new CadastroPage();

Given(/^que eu estou na página do formulário de contato(.*)$/, () => {
  cadastroPage.acessarCadastro();
});

When(/^eu preencho o campo name com (.*)$/, (name) => {
  cadastroPage.preencherCampoName(name);
});

When(/^eu preencho o campo email com (.*)$/, (email) => {
  cadastroPage.preencherCampoEmail(email);
});

When(/^eu preencho o campo company com (.*)$/, (company) => {
  cadastroPage.preencherCampoCompany(company);
});

When(/^eu preencho o campo website com (.*)$/, (website) => {
  cadastroPage.preencherCampoWebsite(website);
});

When(/^eu preencho o campo phone com (.*)$/, (phone) => {
  cadastroPage.preencherCampoPhone(phone);
});

When(/^eu preencho o campo inquiry com (.*)$/, (inquiry) => {
  cadastroPage.preencherCampoInquiry(inquiry);
});

When(/^eu submeto o formulário (.*)$/), () => {


}
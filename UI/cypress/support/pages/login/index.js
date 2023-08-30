/// <reference types="Cypress" />

const el = require("./elements").ELEMENTS;
class Login {
  preencheUsuario(usuario) {
    cy.get(el.inputUsername).type(usuario);
  }

  preencheSenha(senha) {
    cy.get(el.inputSenha).type(senha);
  }

  clicaLogin() {
    cy.get(el.botaoLogin).click();
  }

  validaUsuarioInvalido() {
    cy.get(el.mensagemErro).should(
      "have.text",
      "\n\t\t\tEndereço de e-mail desconhecido. Verifique novamente ou tente seu nome de usuário.\t\t"
    );
  }

  validaSenhaInvalida() {
    cy.get(el.mensagemErro).should(
      "have.text",
      "\n\t\t\tErro: a senha fornecida para o e-mail testeebac2@mailinator.com está incorreta. Perdeu a senha?\t\t"
    );
  }
}
export default new Login();

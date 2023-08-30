/// <reference types="Cypress" />

const el = require("./elements").ELEMENTS;
class Login {
    preencheUsuario(usuario) {
        cy.get(el.inputUsername).type(usuario)
    }

    preencheSenha(senha) {
        cy.get(el.inputSenha).type(senha)
    }

    clicaLogin() {
        cy.get(el.botaoLogin).click()
    }
}
export default new Login();
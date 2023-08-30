/// <reference types="Cypress" />

const el = require("./elements").ELEMENTS;
class Painel {
    validaMensagemBoasVindas() {
        cy.get(el.mensagemBoasVindas).should('be.visible')
    }
}
export default new Painel();
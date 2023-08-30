/// <reference types="Cypress" />

const el = require("./elements").ELEMENTS;
class Home {
    visita() {
        cy.visit("/")
    }

    acessaAreaLogin() {
        cy.get(el.iconeLogin).click();
    }
}
export default new Home();
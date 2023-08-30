/// <reference types="cypress" />

import pageHome from "../support/pages/home";
import pageLogin from "../support/pages/login";
import pagePainel from "../support/pages/painel";

describe("Testes da [US-0002] - Login na plataforma", () => {
  let usuarios;
  beforeEach(() => {
    cy.fixture("usuarios.json").then((p) => {
      usuarios = p;
    });
    pageHome.visita();
  });

  it("deve realizar login com sucesso", () => {
    pageHome.acessaAreaLogin();
    pageLogin.preencheUsuario(usuarios.usuarioValido);
    pageLogin.preencheSenha(usuarios.senhaValida);
    pageLogin.clicaLogin();
    pagePainel.validaMensagemBoasVindas();
  });

  it.only("deve apresentar mensagem de validação com login com usuário inválido", () => {
    //
  });

  it("deve apresentar mensagem de validação com login com senha inválida", () => {
    //
  });
});

const request = require('supertest');
const cupons = require('./contratos/cupom.contract.js')

let url = 'http://lojaebac.ebaconline.art.br';
let token = 'Basic YWRtaW5fZWJhYzogQGFkbWluISZiQGMhMjAyMg=='

describe('Testes de API de cupons', () => {
    it('deve listar todos os cupons', async () => {
        await request(url)
            .get('/wp-json/wc/v3/coupons')
            .set('Accept', 'application/json')
            .set('authorization', token)
            .then(response => {
                expect(response.statusCode).toEqual(200)
                expect(response.body[0]).toHaveProperty('id');
            })
    })

    it('deve validar tentativa de listar um cupom que não existe', async () => {
        await request(url)
            .get('/wp-json/wc/v3/coupons/0')
            .set('Accept', 'application/json')
            .set('authorization', token)
            .then(response => {
                expect(response.statusCode).toEqual(404)
                expect(response.body.message).toBe("ID inválido.")
            })
    })

    it('deve validar contrato', async () => {
        await request(url)
            .get('/wp-json/wc/v3/coupons')
            .set('Accept', 'application/json')
            .set('authorization', token)
            .then(response => {
                return cupons.validateAsync(response.body)
            })
    })
})
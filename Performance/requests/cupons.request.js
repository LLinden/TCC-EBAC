import { check } from "k6"
import http from "k6/http"
import Utils from "../utils/utils.js"

export default class Cupom {
    token = 'Basic YWRtaW5fZWJhYzogQGFkbWluISZiQGMhMjAyMg=='

    list() {
        let response = http.get(`${Utils.getBaseUrl()}/wp-json/wc/v3/coupons`, {
            headers: {
                Accept: 'application/json',
                Authorization: this.token
            }
        })
        check(response, { 'listagem deve retornar 200': r => r && r.status === 200 })
    }

    listCupomById(cupom) {
        let response = http.get(`${Utils.getBaseUrl()}/wp-json/wc/v3/coupons/${cupom}`, {
            headers: {
                Accept: 'application/json',
                Authorization: this.token
            }
        })
        check(response, { 'listagem deve retornar 200': r => r && r.status === 200 })
    }
}
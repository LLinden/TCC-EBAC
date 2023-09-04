import http from 'k6/http';
import { group } from 'k6';
import Cupom from '../requests/cupons.request.js';

export const options = {
  stages: [
    { duration: '20s', target: 20 },
    { duration: '100s', target: 20 },
  ]
}

export default function () {
  let cupom = new Cupom()
  let cupomId = '10696'

  group('deve listar todos os cupons', () => {
    cupom.list()
  })

  group('deve listar apenas um cupom pelo ID', () => {
    cupom.listCupomById(cupomId)
  })
}
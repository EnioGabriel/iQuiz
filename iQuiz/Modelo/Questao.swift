//
//  Questao.swift
//  iQuiz
//
//  Created by Enio  Gabriel Ferreira Silva on 21/08/23.
//

import Foundation

struct Questao {
    var titulo: String
    var resposta: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual o maior clube da América?", resposta: ["São Paulo", "Flamengo", "Boca Juniors"], respostaCorreta: 0),
    Questao(titulo: "Qual o melhor framework multiplataforma?", resposta: ["React Native", "Flutter", "KMM"], respostaCorreta: 0),
    Questao(titulo: "Qual é a razão mais comum para não nomear variáveis de forma clara?", resposta: ["Economizar bytes preciosos na memória", "Exercitar os poderes telepáticos para quem for ler o código", "Fazer o dev chorar no CR"], respostaCorreta: 2)
]

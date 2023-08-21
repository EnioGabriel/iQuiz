//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Enio  Gabriel Ferreira Silva on 21/08/23.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao: Int?

    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var percentualLabel: UILabel!
    @IBOutlet weak var botaoReiniciar: UIButton!
    
    
    @IBAction func botaoPressed(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarDesempenho()
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        botaoReiniciar.layer.cornerRadius = 12.0
    }
    
    func configurarDesempenho(){
        guard let pontuacao = pontuacao else { return }
        resultadoLabel.text = "Você acertou \(pontuacao) de \(questoes.count) questões"
        percentualLabel.text = "Percentual final: \((pontuacao * 100) / questoes.count)%"
    }
}

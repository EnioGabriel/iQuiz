//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Enio  Gabriel Ferreira Silva on 20/08/23.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0

    @IBOutlet weak var tituloQuestao: UILabel!
    @IBOutlet var respostaBotoes: [UIButton]!
    
    @IBAction func respostaBotao(_ sender: UIButton) {
        if sender.tag == questoes[numeroQuestao].respostaCorreta {
            pontuacao += 1
            sender.backgroundColor = UIColor.corDeFundoVerde
        } else {
            sender.backgroundColor = UIColor.corDeFundoVermelho
        }
        
        if numeroQuestao < questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            navegaParaTelaDesempenho()
        }
        
        // Desabilitar todos os botões menos o clicado pelo usuário
        for botao in respostaBotoes {
            if botao.tag != sender.tag {
                botao.isEnabled = false
            }
        }
    }
    
    func navegaParaTelaDesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarQuestao()
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        tituloQuestao.numberOfLines = 0
        
        // Add padding nos botoes
        var configuration = UIButton.Configuration.bordered()
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
        
        for botao in respostaBotoes {
            botao.configuration = configuration
            botao.layer.cornerRadius = 12.0
            
            // Adicionar ação ao botão
            botao.addTarget(self, action: #selector(respostaBotao(_:)), for: .touchUpInside)
        }
    }
    
    @objc func configurarQuestao() {
        tituloQuestao.text = questoes[numeroQuestao].titulo
        for botao in respostaBotoes {
            let tituloBotao = questoes[numeroQuestao].resposta[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor.corDeFundoDefault
            
            botao.isEnabled = true
        }
    }
    
    //Passando valores para a tela
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController
        else { return }
        
        desempenhoVC.pontuacao = pontuacao
    }
}

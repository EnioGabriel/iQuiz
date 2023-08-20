//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Enio  Gabriel Ferreira Silva on 20/08/23.
//

import UIKit

class QuestaoViewController: UIViewController {

    @IBOutlet weak var tituloQuestao: UILabel!
    
    @IBOutlet var respostaBotoes: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }
    
    @IBAction func respostaBotao(_ sender: UIButton) {
    }
    
    func configurarLayout(){
        navigationItem.hidesBackButton = true
        
        for botao in respostaBotoes {
            botao.layer.cornerRadius = 12.0
        }
    }
}

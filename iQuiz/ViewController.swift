//
//  ViewController.swift
//  iQuiz
//
//  Created by Enio  Gabriel Ferreira Silva on 15/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoInicarQuiz: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    
    func configuraLayout(){
        botaoInicarQuiz.layer.cornerRadius = 12.0
    }


}


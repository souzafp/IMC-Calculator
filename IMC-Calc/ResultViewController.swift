//
//  ResultViewController.swift
//  IMC-Calc
//
//  Created by Filipe Souza on 06/03/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbResult: UILabel!
    var receivedValue: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("CARREGUEI A SEGUNDA TELA")
        lbResult.text = receivedValue
        print(lbResult!)
    }
    
    

    
    
    
}

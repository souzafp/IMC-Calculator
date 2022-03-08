//
//  ViewController.swift
//  IMC-Calc
//
//  Created by Filipe Souza on 06/03/22.
//

import Foundation
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var btnClear: UIButton!
    @IBOutlet weak var btnCalc: UIButton!
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblTitleResult: UILabel!
    
    
    var imcCalc: Double = 0
    var imcResult: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfHeight.delegate = self
        tfWeight.delegate = self
        tfHeight.keyboardType = .numberPad
        tfWeight.keyboardType = .numberPad
        btnClear.layer.cornerRadius = 10
        btnClear.clipsToBounds = true
        btnCalc.layer.cornerRadius = 10
        btnCalc.clipsToBounds = true
    }
    
    
    @IBAction func sendResult(_ sender: Any){
        if let weight = Double(tfWeight.text!), let height = Double(tfHeight.text!) {
            imcCalc = calcIMC(height: height, weight: weight)
            imcResult = showIMC(imc: imcCalc)
            lblTitleResult.text = "Seu Resultado"
            lblResult.text = (String(imcResult))
        }
    }
    
    @IBAction func btnClear(_ sender: Any) {
        self.tfHeight.text = ""
        self.tfWeight.text = ""
        self.lblResult.text = ""
        self.lblTitleResult.text = ""
        self.lblResult.text = ""
    }
}

//
//  CalcIMC.swift
//  IMC-Calc
//
//  Created by Filipe Souza on 06/03/22.
//

import Foundation
import UIKit


func calcIMC (height: Double, weight: Double) -> Double {
    let imc = weight / pow(height, 2) * 10000
    return imc
}

func truncateDigitsAfterDecimal(number: Double, afterDecimalDigits: Int) -> Double {
   if afterDecimalDigits < 1 || afterDecimalDigits > 512 {return 0.0}
   return Double(String(format: "%.\(afterDecimalDigits)f", number))!
}


func showIMC (imc: Double) -> String {
    var imctxt: String = ""
    var transf: Double = 0
    
    transf = truncateDigitsAfterDecimal(number: imc, afterDecimalDigits: 1)
    imctxt = String(transf)

    if imc < 18.5 {
        return ("Seu IMC pessoal: " + imctxt + "\nAbaixo do Peso")
    } else if imc < 24.9 {
        return (imctxt + "Peso Normal")
    } else if imc < 29.9 {
        return (imctxt + "Sobrepeso")
    } else if imc < 34.9 {
        return (imctxt + "Obesidade Grau I")
    } else if imc < 39.9 {
        return (imctxt + "Obesidade Grau II")
    }
    return (imctxt + "Obesidade III ou Mórbida")
}

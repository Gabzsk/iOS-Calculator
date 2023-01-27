//
//  CalculatorViewModel.swift
//  TesteC
//
//  Created by Gabriel Nobre Modesto on 10/01/23.
//

import Foundation

protocol CalculatorViewModelProtocol {
    var result: Dynamic<String> { get set }
    func sum(num1: Int, num2: Int)
    func subtract(num1: Int, num2: Int)
    func divide(num1: Int, num2: Int)
    func multiply(num1: Int, num2: Int)
}

class CalculatorViewModel: CalculatorViewModelProtocol {
    
    // MARK: - Properties
    
    var result = Dynamic<String>("") /// transforma o Result em uma variável observada do tipo String
    var conversor = Conversor.shared
    
    // MARK: - Private Methods
    
    func sum(num1: Int, num2: Int) {
        result.value = conversor.intToStringConverter(int: num1 + num2) // atribuir retorno de intToStringConverter pro valor do Result
    }
    
    func subtract(num1: Int, num2: Int) {
        let sub = num1 - num2
        let subResult = String(sub)
        result.value = subResult
    }
    
    func divide(num1: Int, num2: Int) {
        let div = num1 / num2
        let divResult = String(div)
        result.value = divResult
    }
    
    func multiply(num1: Int, num2: Int) {
        let mult = num1 * num2
        let multResult = String(mult)
        result.value = multResult
    }
}


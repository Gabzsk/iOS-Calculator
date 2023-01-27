//
//  Conversor.swift
//  TesteC
//
//  Created by Gabriel Nobre Modesto on 20/01/23.
//

import Foundation
import UIKit

class Conversor {
    static let shared = Conversor()
    
    private init() {
        
    }
    
    func stringToIntConverter(value: String?) -> Int { /// Converterá n1 e n2 para Int
        guard let string = value, let convertedInt = Int(string) else { return 0 }
        return convertedInt
    }
    
    func intToStringConverter(int: Int) -> String { /// Converterá o Resultado do cálculo para String
        return String(int)
    }
}

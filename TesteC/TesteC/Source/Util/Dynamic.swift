//
//  Dynamic.swift
//  TesteC
//
//  Created by Gabriel Nobre Modesto on 20/01/23.
//

import Foundation

class Dynamic<T> {
    
    typealias Listener = (T) -> Void
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    func bind(callback: @escaping (T) -> Void) {
        self.listener = callback /// "escuta" por mudanças em uma variável de qualquer tipo
    }
    
    init(_ value: T) {
        self.value = value
    }
}

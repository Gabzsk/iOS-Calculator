//
//  CalculatorViewController.swift
//  TesteC
//
//  Created by Gabriel Nobre Modesto on 10/01/23.
//

import UIKit


class CalculatorViewController: UIViewController {
    
    // MARK: - Properties
    
    var viewModel: CalculatorViewModelProtocol?
    var conversor = Conversor.shared
    private var screen: CalculatorView?
    
    static func instantiate(viewModel: CalculatorViewModelProtocol?) -> CalculatorViewController {
        let viewController = CalculatorViewController()
        viewController.viewModel = viewModel
        return viewController
    }
    
    // MARK: - Methods
    
    override func loadView() {
        super.loadView()
        screen = CalculatorView()
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screen?.backgroundColor = .white
        setupDelegate() /// atribui responsabilidade do seu valor para View Controller
        setupAction() /// capta a açao do botao e transforma função objc pra swift
        bindElement() /// Chama o método Bind, atualizando o valor do ResultLabel sempre que a variável result mudar
    }
    
    private func setupAction() {
        screen?.sumButton.addTarget(self, action: #selector(sumButtonAction), for: .touchUpInside)
        screen?.subtractButton.addTarget(self, action: #selector(subtractButtonAction), for: .touchUpInside)
        screen?.divideButton.addTarget(self, action: #selector(divideButtonAction), for: .touchUpInside)
        screen?.multiplyButton.addTarget(self, action: #selector(multiplyButtonAction), for: .touchUpInside)
    }
    
    private func setupDelegate() {
        screen?.n1TextField.delegate = self
        screen?.n2TextField.delegate = self
    }
    
    private func bindElement() {
        viewModel?.result.bind { text in
            self.screen?.resultLabel.text = text
        }
    }
    
    @objc
    private func sumButtonAction() {
        viewModel?.sum(
            num1: conversor.stringToIntConverter(value: screen?.n1TextField.text),
            num2: conversor.stringToIntConverter(value: screen?.n2TextField.text)
        )
    }
    
    @objc
    private func subtractButtonAction() {
        viewModel?.subtract(num1: conversor.stringToIntConverter(value: screen?.n1TextField.text),
                            num2: conversor.stringToIntConverter(value: screen?.n2TextField.text))
    }
    
    @objc
    private func divideButtonAction() {
        viewModel?.divide(num1: conversor.stringToIntConverter(value: screen?.n1TextField.text),
                          num2: conversor.stringToIntConverter(value: screen?.n2TextField.text))
    }
    
    @objc
    private func multiplyButtonAction() {
        viewModel?.multiply(num1: conversor.stringToIntConverter(value: screen?.n1TextField.text),
                            num2: conversor.stringToIntConverter(value: screen?.n2TextField.text))
    }
}

// MARK: - Extension

extension CalculatorViewController: UITextFieldDelegate { /// Diz que tipo de responsabilidade terá - Text Field Delegate
    
}


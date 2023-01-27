//
//  CalculatorView.swift
//  TesteC
//
//  Created by Gabriel Nobre Modesto on 10/01/23.
//

import Foundation
import UIKit

class CalculatorView: UIView {
    
    // MARK: - Properties
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        stack.backgroundColor = .lightGray.withAlphaComponent(0.2)
        stack.layer.cornerRadius = 10
        stack.distribution = .fillEqually
        stack.alignment = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private var numberStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private var fieldStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 15
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private var buttonOneStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 15
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private var buttonTwoStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 15
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private var n1Label: UILabel = {
        let label = UILabel()
        //
        label.textColor = .systemGreen
        label.text = "Número 1"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 16.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var n2Label: UILabel = {
        let label = UILabel()
        //
        label.textColor = .systemGreen
        label.text = "Número 2"
        label.font = .boldSystemFont(ofSize: 16.0)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var n1TextField: UITextField = {
        let text = UITextField()
        text.textColor = .black
        text.backgroundColor = .white
        text.layer.cornerRadius = 10
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    var n2TextField: UITextField = {
        let text = UITextField()
        text.textColor = .black
        text.backgroundColor = .white
        text.layer.cornerRadius = 10
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    var resultLabel: UILabel = {
        let result = UILabel()
        result.textColor = .systemGreen
        result.font = .boldSystemFont(ofSize: 16.0)
        result.translatesAutoresizingMaskIntoConstraints = false
        return result
    }()
    
    var sumButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBrown
        button.setTitle("+", for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var subtractButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBrown
        button.setTitle("-", for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var multiplyButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBrown
        button.setTitle("*", for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var divideButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBrown
        button.setTitle("/", for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Initializers
    
    init() {
        super.init(frame: .zero)
        buildViews()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func buildViews() {
        setupStackView()
        setupNumberStackView()
        setupFieldStackView()
        setupResultView()
        setupButtonOneStackView()
        setupButtonTwoStackView()
    }
    
   private func setupStackView() {
        addSubview(stackView)
        
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 36).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -36).isActive = true
        stackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    private func setupNumberStackView() {
        stackView.addArrangedSubview(numberStackView)
        numberStackView.addArrangedSubview(n1Label)
        numberStackView.addArrangedSubview(n2Label)
        
        numberStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 16).isActive = true
        numberStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -16).isActive = true
    }
    
    private func setupFieldStackView() {
        stackView.addArrangedSubview(fieldStackView)
        fieldStackView.addArrangedSubview(n1TextField)
        fieldStackView.addArrangedSubview(n2TextField)
        
        fieldStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 15).isActive = true
        fieldStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -15).isActive = true
    }
    
    private func setupResultView() {
        stackView.addArrangedSubview(resultLabel)
        
    }
    
    private func setupButtonOneStackView() {
        stackView.addArrangedSubview(buttonOneStackView)
        buttonOneStackView.addArrangedSubview(sumButton)
        buttonOneStackView.addArrangedSubview(subtractButton)
        
        buttonOneStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 16).isActive = true
        buttonOneStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -16).isActive = true
    }
    
    private func setupButtonTwoStackView() {
        stackView.addArrangedSubview(buttonTwoStackView)
        buttonTwoStackView.addArrangedSubview(divideButton)
        buttonTwoStackView.addArrangedSubview(multiplyButton)
        
        buttonTwoStackView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 16).isActive = true
        buttonTwoStackView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -16).isActive = true
    }
}

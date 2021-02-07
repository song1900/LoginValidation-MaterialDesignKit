//
//  RootViewController.swift
//  LoginValidation
//
//  Created by 송우진 on 2021/02/04.
//

import UIKit
import MaterialComponents.MaterialTextControls_OutlinedTextFields
import MaterialComponents.MaterialButtons

class LoginViewController: UIViewController {
    // MARK: - Properties
    private lazy var idTextField: MDCOutlinedTextField = {
        let tf = MDCOutlinedTextField()
        tf.label.text = "id"
        tf.placeholder = "Enter your id"
        tf.leadingAssistiveLabel.text = "This is where enter your id"
        tf.heightAnchor.constraint(equalToConstant: 40).isActive = true
        tf.sizeToFit()
        return tf
    }()
    
    private lazy var pwTextField: MDCOutlinedTextField = {
        let tf = MDCOutlinedTextField()
        tf.label.text = "password"
        tf.placeholder = "Enter your password"
        tf.leadingAssistiveLabel.text = "This is where enter your password"
        tf.heightAnchor.constraint(equalToConstant: 40).isActive = true
        tf.sizeToFit()
        tf.isSecureTextEntry = true
        return tf
    }()
    
    private lazy var loginButton: MDCButton = {
        let bt = MDCButton()
        bt.setTitle("login", for: .normal)
        bt.heightAnchor.constraint(equalToConstant: 40).isActive = true
        bt.setBackgroundColor(.purple)
        bt.isUserInteractionEnabled = false
        bt.alpha = 0.3
        return bt
    }()
    
    private lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [idTextField, pwTextField, loginButton])
        sv.axis = .vertical
        sv.spacing = 50
        return sv
    }()
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configure()
        
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
    

    // MARK: - Configure
    func configure() {
        view.backgroundColor = .systemBackground
    }

}

//
//  LogInViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 26.05.2024.
//

import UIKit

class LogInViewController: UIViewController {
    private lazy var logoImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "KerrLogo")
        return image
    }()
    
    private lazy var logInTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Ваш логин"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var passwordTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Ваш пароль"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var logInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(.blue)
        button.setTitle("Войти", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(enterInApp), for: .touchUpInside)
        return button
    }()
    
    private lazy var forgetLoginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Забыли логин?", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(enterInApp), for: .touchUpInside)
        return button
    }()
    
    private lazy var forgetPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Забыли пароль?", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(enterInApp), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews(logoImage, logInTF, passwordTF, logInButton, forgetLoginButton, forgetPasswordButton)
        setConstraints()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60)
        ])
        
        logInTF.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logInTF.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 0),
            logInTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            logInTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        passwordTF.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordTF.topAnchor.constraint(equalTo: logInTF.bottomAnchor, constant: 20),
            passwordTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            passwordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logInButton.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 40),
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 140),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -140)
        ])
        
        forgetLoginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            forgetLoginButton.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 40),
            forgetLoginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            forgetLoginButton.trailingAnchor.constraint(equalTo: forgetPasswordButton.leadingAnchor, constant: -50)
        ])
        
        forgetPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            forgetPasswordButton.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 40),
            forgetPasswordButton.leadingAnchor.constraint(equalTo: forgetLoginButton.trailingAnchor, constant: 50),
            forgetPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
    
    @objc private func enterInApp() {
        let aboutCompanyVC = AboutCompanyViewController()
        show(aboutCompanyVC, sender: self)
    }
}

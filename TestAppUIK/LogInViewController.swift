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
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var logInTF: CustomTextFiled = {
        let textField = CustomTextFiled(placeholderName: "Ваш логин")
        return textField
    }()
    
    private lazy var passwordTF: CustomTextFiled = {
        let textField = CustomTextFiled(placeholderName: "Ваш пароль")
        return textField
    }()
    
    private lazy var logInButton: CustomButton = {
        let button = CustomButton(title: "Войти", color: .white, font: .boldSystemFont(ofSize: 20), background: .systemBlue)
        button.addTarget(self, action: #selector(enterInApp), for: .touchUpInside)
        return button
    }()
    
    private lazy var forgetLoginButton: CustomButton = {
        let button = CustomButton(title: "Забыли логин?", color: .systemBlue, font: .systemFont(ofSize: 15), background: .white)
        button.addTarget(self, action: #selector(enterInApp), for: .touchUpInside)
        return button
    }()
    
    private lazy var forgetPasswordButton: CustomButton = {
        let button = CustomButton(title: "Забыли пароль?", color: .systemBlue, font: .systemFont(ofSize: 15), background: .white)
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
        
        NSLayoutConstraint.activate([
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60)
        ])
        
        NSLayoutConstraint.activate([
            logInTF.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 0),
            logInTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            logInTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            passwordTF.topAnchor.constraint(equalTo: logInTF.bottomAnchor, constant: 20),
            passwordTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            passwordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            logInButton.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 40),
            logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 140),
            logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -140)
        ])
        
        NSLayoutConstraint.activate([
            forgetLoginButton.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 40),
            forgetLoginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            forgetLoginButton.trailingAnchor.constraint(equalTo: forgetPasswordButton.leadingAnchor, constant: -50)
        ])
        
        NSLayoutConstraint.activate([
            forgetPasswordButton.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 40),
            forgetPasswordButton.leadingAnchor.constraint(equalTo: forgetLoginButton.trailingAnchor, constant: 50),
            forgetPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
    
    @objc private func enterInApp() {
        let tabBarVC = TabBarViewController()
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
}

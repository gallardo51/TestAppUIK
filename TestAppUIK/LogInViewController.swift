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
    
    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        
        setupSubviews(logoImage, logInTF, passwordTF, logInButton, forgetLoginButton, forgetPasswordButton)
        setConstraints()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(logoImage.heightAnchor.constraint(equalToConstant: 200))
        constraints.append(logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 120))
        constraints.append(logoImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60))
        constraints.append(logoImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60))
        
        // TextFields
        constraints.append(logInTF.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 0))
        constraints.append(logInTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(logInTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        constraints.append(passwordTF.topAnchor.constraint(equalTo: logInTF.bottomAnchor, constant: 20))
        constraints.append(passwordTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(passwordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        // Buttons
        constraints.append(logInButton.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 40))
        constraints.append(logInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 140))
        constraints.append(logInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -140))
        
        constraints.append(forgetLoginButton.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 40))
        constraints.append(forgetLoginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(forgetLoginButton.trailingAnchor.constraint(equalTo: forgetPasswordButton.leadingAnchor, constant: -50))
        
        constraints.append(forgetPasswordButton.topAnchor.constraint(equalTo: logInButton.bottomAnchor, constant: 40))
        constraints.append(forgetPasswordButton.leadingAnchor.constraint(equalTo: forgetLoginButton.trailingAnchor, constant: 50))
        constraints.append(forgetPasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    @objc private func enterInApp() {
        let tabBarVC = TabBarViewController()
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
    }
}

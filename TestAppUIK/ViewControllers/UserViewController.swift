//
//  UserViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 14.06.2024.
//

import UIKit

class UserViewController: UIViewController {
    
    var user: User!
    
    private lazy var userImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: user.subject.userImage)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 20
        image.layer.masksToBounds = true
        return image
    }()
    
    private lazy var userFullName: CustomLabel = {
        let label = CustomLabel(
            title: "\(user.subject.fullName)",
            alignment: .center,
            textFont: .boldSystemFont(ofSize: 20.0))
        return label
    }()
    
    private lazy var birthdayDate: CustomLabel = {
        let label = CustomLabel(
            title: "\(user.subject.bornDate)",
            alignment: .natural,
            textFont: .systemFont(ofSize: 17))
        return label
    }()
    
    private lazy var cellphoneUser: CustomLabel = {
        let label = CustomLabel(
            title: "\(user.subject.cellPhone)",
            alignment: .natural,
            textFont: .systemFont(ofSize: 17))
        return label
    }()
    
    private lazy var emailUser: CustomLabel = {
        let label = CustomLabel(
            title: "\(user.subject.email)",
            alignment: .natural,
            textFont: .systemFont(ofSize: 17))
        return label
    }()
    
    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "Пользователь"
        
        setupSubviews(userImage, userFullName, birthdayDate, cellphoneUser, emailUser)
        setConstraints()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(userImage.heightAnchor.constraint(equalToConstant: 200))
        constraints.append(userImage.widthAnchor.constraint(equalToConstant: 200))
        constraints.append(userImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 170))
        constraints.append(userImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0))
        
        constraints.append(userFullName.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 20))
        constraints.append(userFullName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(userFullName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(birthdayDate.topAnchor.constraint(equalTo: userFullName.bottomAnchor, constant: 40))
        constraints.append(birthdayDate.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(birthdayDate.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(cellphoneUser.topAnchor.constraint(equalTo: birthdayDate.bottomAnchor, constant: 20))
        constraints.append(cellphoneUser.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(cellphoneUser.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(emailUser.topAnchor.constraint(equalTo: cellphoneUser.bottomAnchor, constant: 20))
        constraints.append(emailUser.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(emailUser.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
}

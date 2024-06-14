//
//  UserViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 14.06.2024.
//

import UIKit

class UserViewController: UIViewController {
    
    private lazy var userImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person.fill")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var userFullName: UILabel = {
        let label = UILabel()
        label.text = "Александр Соболев"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 20.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var birthdayDate: UILabel = {
        let label = UILabel()
        label.text = "08.07.1988"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var cellphoneUser: UILabel = {
        let label = UILabel()
        label.text = "+7 961 029 75 02"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var emailUser: UILabel = {
        let label = UILabel()
        label.text = "31108@mail.ru"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setNavBar()
        setupSubviews(userImage, userFullName, birthdayDate, cellphoneUser, emailUser)
        setConstraints()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setNavBar() {
        title = "Пользователь"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let navBarAppearance = UINavigationBarAppearance()
        
        navBarAppearance.backgroundColor = UIColor(
            red: 21/255,
            green: 101/255,
            blue: 192/255,
            alpha: 194/255
        )
        
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            userImage.heightAnchor.constraint(equalToConstant: 200),
            userImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 170),
            userImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            userImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60)
        ])
        
        NSLayoutConstraint.activate([
            userFullName.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 20),
            userFullName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            userFullName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            birthdayDate.topAnchor.constraint(equalTo: userFullName.bottomAnchor, constant: 40),
            birthdayDate.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            birthdayDate.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            cellphoneUser.topAnchor.constraint(equalTo: birthdayDate.bottomAnchor, constant: 20),
            cellphoneUser.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            cellphoneUser.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            emailUser.topAnchor.constraint(equalTo: cellphoneUser.bottomAnchor, constant: 20),
            emailUser.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailUser.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

}

//
//  EmployeeDetailViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 14.06.2024.
//

import UIKit

class EmployeeDetailViewController: UIViewController {
    
    var employeeList: Employee!
    
    private lazy var employeeImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: employeeList.fullName)
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var employeeTitle: UILabel = {
        let label = UILabel()
        label.text = "\(employeeList.fullName)"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 20.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var postTitle: UILabel = {
        let label = UILabel()
        label.text = "\(employeeList.post)"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var cellphoneTitle: UILabel = {
        let label = UILabel()
        label.text = "\(employeeList.cellPhone)"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var emailTitle: UILabel = {
        let label = UILabel()
        label.text = "\(employeeList.email)"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setNavBar()
        setupSubviews(employeeImage, employeeTitle, postTitle, cellphoneTitle, emailTitle)
        setConstraints()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setNavBar() {
        title = "\(employeeList.fullName)"
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
        
        setCustomBackButton()
        
    }
    
    private func setCustomBackButton() {
        let newBackButton = UIBarButtonItem(
            title: "Назад",
            style: .plain,
            target: self,
            action: #selector(backAction)
        )
        navigationController?.navigationBar.topItem?.backBarButtonItem = newBackButton
    
    }
    
    @objc func backAction() {
        self.navigationController?.popViewController(animated: true)
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            employeeImage.heightAnchor.constraint(equalToConstant: 200),
            employeeImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 170),
            employeeImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            employeeImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60)
        ])
        
        NSLayoutConstraint.activate([
            employeeTitle.topAnchor.constraint(equalTo: employeeImage.bottomAnchor, constant: 20),
            employeeTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            employeeTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            postTitle.topAnchor.constraint(equalTo: employeeTitle.bottomAnchor, constant: 10),
            postTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            postTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            cellphoneTitle.topAnchor.constraint(equalTo: postTitle.bottomAnchor, constant: 40),
            cellphoneTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            cellphoneTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            emailTitle.topAnchor.constraint(equalTo: cellphoneTitle.bottomAnchor, constant: 20),
            emailTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

}

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
    
    private lazy var employeeTitle: CustomLabel = {
        let label = CustomLabel(
            title: "\(employeeList.fullName)",
            alignment: .center,
            textFont: .boldSystemFont(ofSize: 20.0))
        return label
    }()
    
    private lazy var postTitle: CustomLabel = {
        let label = CustomLabel(
            title: "\(employeeList.post)",
            alignment: .center,
            textFont: .systemFont(ofSize: 17))
        return label
    }()
    
    private lazy var cellphoneTitle: CustomLabel = {
        let label = CustomLabel(
            title: "\(employeeList.cellPhone)",
            alignment: .natural,
            textFont: .systemFont(ofSize: 17))
        return label
    }()
    
    private lazy var emailTitle: CustomLabel = {
        let label = CustomLabel(
            title: "\(employeeList.email)",
            alignment: .natural,
            textFont: .systemFont(ofSize: 17))
        return label
    }()
    
    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "\(employeeList.fullName)"
        setCustomBackButton()
        
        setupSubviews(employeeImage, employeeTitle, postTitle, cellphoneTitle, emailTitle)
        setConstraints()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
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
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(employeeImage.heightAnchor.constraint(equalToConstant: 200))
        constraints.append(employeeImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 170))
        constraints.append(employeeImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60))
        constraints.append(employeeImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60))
        
        constraints.append(employeeTitle.topAnchor.constraint(equalTo: employeeImage.bottomAnchor, constant: 20))
        constraints.append(employeeTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(employeeTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(postTitle.topAnchor.constraint(equalTo: employeeTitle.bottomAnchor, constant: 10))
        constraints.append(postTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(postTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(cellphoneTitle.topAnchor.constraint(equalTo: postTitle.bottomAnchor, constant: 40))
        constraints.append(cellphoneTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(cellphoneTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(emailTitle.topAnchor.constraint(equalTo: cellphoneTitle.bottomAnchor, constant: 20))
        constraints.append(emailTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(emailTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
}

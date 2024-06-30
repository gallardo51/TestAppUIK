//
//  QuizViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 08.06.2024.
//

import UIKit

class QuizViewController: UIViewController {
    
    private let companyInfo = CompanyInformation.getCompanyInfo()
    
    private lazy var quizImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person.crop.circle.badge.questionmark")
        image.tintColor = UIColor.lightGray
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var supportText: CustomLabel = {
        let label = CustomLabel(
            title: "\(companyInfo.companyAskes)",
            alignment: .natural,
            textFont: .systemFont(ofSize: 17))
        return label
    }()
    
    private lazy var startQuiz: CustomButton = {
        let button = CustomButton(
            title: "Начать опрос",
            color: .white,
            font: .boldSystemFont(ofSize: 20),
            background: .systemBlue)
        button.addTarget(self, action: #selector(enterInQuiz), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "Опрос"
        navigationItem.hidesBackButton = true
        
        setupSubviews(quizImage, supportText, startQuiz)
        setConstraints()
        
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(quizImage.heightAnchor.constraint(equalToConstant: 140))
        constraints.append(quizImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 160))
        constraints.append(quizImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120))
        constraints.append(quizImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120))
        
        constraints.append(supportText.topAnchor.constraint(equalTo: quizImage.bottomAnchor, constant: 20))
        constraints.append(supportText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(supportText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(startQuiz.topAnchor.constraint(equalTo: supportText.bottomAnchor, constant: 40))
        constraints.append(startQuiz.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120))
        constraints.append(startQuiz.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc private func enterInQuiz() {
        let questionsVC = QuestionsViewController()
        show(questionsVC, sender: self)
    }

}

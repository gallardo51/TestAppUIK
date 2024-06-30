//
//  ResultsViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 11.06.2024.
//

import UIKit

class ResultsViewController: UIViewController {
    
    private let companyInfo = CompanyInformation.getCompanyInfo()
    
    var answers: [Answer]!
    
    private lazy var viewTitle: CustomLabel = {
        let viewTitle = CustomLabel(
            title: "\(companyInfo.companyThanks)",
            alignment: .center,
            textFont: .boldSystemFont(ofSize: 20))
        return viewTitle
    }()
    
    private lazy var questionLabel: CustomLabel = {
        let questionLabel = CustomLabel()
        return questionLabel
    }()
    
    private lazy var quiteQuiz: CustomButton = {
        let button = CustomButton(
            title: "Выйти",
            color: .red,
            font: .systemFont(ofSize: 17),
            background: .white)
        button.addTarget(self, action: #selector(quiteFromQuiz), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        updateUI(with: answers)
        setupSubviews(viewTitle, questionLabel, quiteQuiz)
        setConstraints()
        
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(viewTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 50))
        constraints.append(viewTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(viewTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(questionLabel.topAnchor.constraint(equalTo: viewTitle.bottomAnchor, constant: 20))
        constraints.append(questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(quiteQuiz.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 40))
        constraints.append(quiteQuiz.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(quiteQuiz.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
    
        NSLayoutConstraint.activate(constraints)
    }
    
    private func updateUI(with answer: [Answer]) {
        
        let first = answer.filter { $0.questionNumber == .q1 }
        let second = answer.filter { $0.questionNumber == .q2 }
        let third = answer.filter { $0.questionNumber == .q3 }
        let fourth = answer.filter { $0.questionNumber == .q4 }
        let fifth = answer.filter { $0.questionNumber == .q5 }
        let sixth = answer.filter { $0.questionNumber == .q6 }
        
        var titles: [String] { first.map(\.title) }
        var titles2: [String] { second.map(\.title) }
        var titles3: [String] { third.map(\.title) }
        var titles4: [String] { fourth.map(\.title) }
        var titles5: [String] { fifth.map(\.title) }
        var titles6: [String] { sixth.map(\.title) }
        
        questionLabel.text = "Вопрос 1: \(titles.formatted(.list(type: .and, width: .narrow))) \n \nВопрос 2: \(titles2.formatted(.list(type: .and, width: .narrow))) \n \nВопрос 3: \(titles3.formatted(.list(type: .and, width: .narrow))) \n \nВопрос 4: \(titles4.formatted(.list(type: .and, width: .narrow))) \n \nВопрос 5: \(titles5.formatted(.list(type: .and, width: .narrow))) \n \nВопрос 6: \(titles6.formatted(.list(type: .and, width: .narrow)))"
    }
    
    @objc private func quiteFromQuiz() {
        dismiss(animated: true)
    }
}


//
//  QuestionsViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 09.06.2024.
//

import UIKit

class QuestionsViewController: UIViewController {
    private lazy var progressView: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var questionLabel: UILabel = {
        let questionLabel = UILabel()
        questionLabel.text = "Для этой цели мы просим Вас пройти короткий опрос, он поможет нам лучше узнать чем Вы пользуетесь и упростит подбор нужного для Вас продукта."
        questionLabel.font = .boldSystemFont(ofSize: 20)
        questionLabel.numberOfLines = 0
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        return questionLabel
    }()
    
    private lazy var answerLabel: UILabel = {
        let answerLabel = UILabel()
        answerLabel.text = "Harmonize"
        answerLabel.numberOfLines = 0
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        return answerLabel
    }()
    
    private lazy var switchAnswer: UISwitch = {
        let switchAnswer = UISwitch()
        switchAnswer.translatesAutoresizingMaskIntoConstraints = false
        return switchAnswer
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 100
        stackView.addArrangedSubview(answerLabel)
        stackView.addArrangedSubview(switchAnswer)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var nextQuestionButton: UIButton = {
        let button = UIButton()
        button.setTitle("Следующий вопрос >>>", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(nextQuestion), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setNavBar()
        setupSubviews(progressView, questionLabel, stackView, nextQuestionButton)
        setConstraints()
    }
    
    private func setNavBar() {
        title = "Вопрос №   из   "
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
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            progressView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            progressView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            questionLabel.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 10),
            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 60),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60)
        ])
        
        NSLayoutConstraint.activate([
            nextQuestionButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 40),
            nextQuestionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            nextQuestionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60)
        ])
        
    }
    
    @objc private func nextQuestion() {
    }
}

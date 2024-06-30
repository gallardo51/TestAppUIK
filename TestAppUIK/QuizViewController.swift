//
//  QuizViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 08.06.2024.
//

import UIKit

class QuizViewController: UIViewController {
    private lazy var quizImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person.crop.circle.badge.questionmark")
        image.tintColor = UIColor.lightGray
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var supportText: UILabel = {
        let label = UILabel()
        label.text = "Наша компания постоянно развивается. \nМы стремимся быть лучше для Вас и нацеленны предлагать продукты, которые помогут решить вопрос именно  в Вашей практике. \n \nДля этой цели мы просим Вас пройти короткий опрос, он поможет нам лучше узнать чем Вы пользуетесь и упростит подбор нужного для Вас продукта."
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var startQuiz: UIButton = {
        let button = CustomButton()
        button.setTitle("Начать опрос", for: .normal)
        button.addTarget(self, action: #selector(enterInQuiz), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setNavBar()
        setupSubviews(quizImage, supportText, startQuiz)
        setConstraints()
        
    }
    
    private func setNavBar() {
        title = "Опрос"
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
        
        navigationItem.hidesBackButton = true
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            quizImage.heightAnchor.constraint(equalToConstant: 140),
            quizImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            quizImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            quizImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120)
        ])
        
        
        NSLayoutConstraint.activate([
            supportText.topAnchor.constraint(equalTo: quizImage.bottomAnchor, constant: 20),
            supportText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            supportText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
        NSLayoutConstraint.activate([
            startQuiz.topAnchor.constraint(equalTo: supportText.bottomAnchor, constant: 40),
            startQuiz.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            startQuiz.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120)
        ])
    }
    
    @objc private func enterInQuiz() {
        let questionsVC = QuestionsViewController()
        show(questionsVC, sender: self)
    }

}

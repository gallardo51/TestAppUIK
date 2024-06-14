//
//  ResultsViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 11.06.2024.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var answers: [Answer]!
    
    private lazy var questionLabel: UILabel = {
        let questionLabel = UILabel()
        questionLabel.font = .boldSystemFont(ofSize: 20)
        questionLabel.numberOfLines = 0
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        return questionLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews(questionLabel)
        updateUI(with: answers)
        
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            questionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
    }
    
    private func updateUI(with answer: [Answer]) {
        questionLabel.text = "Вопрос 1: \(answer[0].title),\nВопрос 2: \(answer[1].title), \nВопрос 3: \(answer[2].title), \nВопрос 4: \(answer[3].title), \nВопрос 5: \(answer[4].title), \nВопрос 6: \(answer[5].title)."
    }
}


//
//  QuestionsViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 09.06.2024.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    private let questions = Question.getQuestions()
    private var answersChosen: [Answer] = []
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    private var questionIndex = 0
    
    private lazy var progressView: UIProgressView = {
        let progressView = UIProgressView()
        progressView.progressTintColor = .systemGreen
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    private lazy var questionLabel: UILabel = {
        let questionLabel = UILabel()
        questionLabel.font = .boldSystemFont(ofSize: 20)
        questionLabel.numberOfLines = 0
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        return questionLabel
    }()
    
    private lazy var answerLabel1: UILabel = {
        let answerLabel = UILabel()
        answerLabel.numberOfLines = 0
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        return answerLabel
    }()
    
    private lazy var answerLabel2: UILabel = {
        let answerLabel = UILabel()
        answerLabel.numberOfLines = 0
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        return answerLabel
    }()
    
    private lazy var answerLabel3: UILabel = {
        let answerLabel = UILabel()
        answerLabel.numberOfLines = 0
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        return answerLabel
    }()
    
    private lazy var answerLabel4: UILabel = {
        let answerLabel = UILabel()
        answerLabel.numberOfLines = 0
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        return answerLabel
    }()
    
    private lazy var answerLabel5: UILabel = {
        let answerLabel = UILabel()
        answerLabel.numberOfLines = 0
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        return answerLabel
    }()
    
    private lazy var answerLabel6: UILabel = {
        let answerLabel = UILabel()
        answerLabel.numberOfLines = 0
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        return answerLabel
    }()
    
    private lazy var answerLabel7: UILabel = {
        let answerLabel = UILabel()
        answerLabel.numberOfLines = 0
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        return answerLabel
    }()
    
    private lazy var answerLabel8: UILabel = {
        let answerLabel = UILabel()
        answerLabel.numberOfLines = 0
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        return answerLabel
    }()
    
    private lazy var switchAnswer1: UISwitch = {
        let switchAnswer = UISwitch()
        switchAnswer.translatesAutoresizingMaskIntoConstraints = false
        return switchAnswer
    }()
    
    private lazy var switchAnswer2: UISwitch = {
        let switchAnswer = UISwitch()
        switchAnswer.translatesAutoresizingMaskIntoConstraints = false
        return switchAnswer
    }()
    
    private lazy var switchAnswer3: UISwitch = {
        let switchAnswer = UISwitch()
        switchAnswer.translatesAutoresizingMaskIntoConstraints = false
        return switchAnswer
    }()
    
    private lazy var switchAnswer4: UISwitch = {
        let switchAnswer = UISwitch()
        switchAnswer.translatesAutoresizingMaskIntoConstraints = false
        return switchAnswer
    }()
    
    private lazy var switchAnswer5: UISwitch = {
        let switchAnswer = UISwitch()
        switchAnswer.translatesAutoresizingMaskIntoConstraints = false
        return switchAnswer
    }()
    
    private lazy var switchAnswer6: UISwitch = {
        let switchAnswer = UISwitch()
        switchAnswer.translatesAutoresizingMaskIntoConstraints = false
        return switchAnswer
    }()
    
    private lazy var switchAnswer7: UISwitch = {
        let switchAnswer = UISwitch()
        switchAnswer.translatesAutoresizingMaskIntoConstraints = false
        return switchAnswer
    }()
    
    private lazy var switchAnswer8: UISwitch = {
        let switchAnswer = UISwitch()
        switchAnswer.translatesAutoresizingMaskIntoConstraints = false
        return switchAnswer
    }()
    
    private lazy var stackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.addArrangedSubview(answerLabel1)
        stackView.addArrangedSubview(switchAnswer1)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.addArrangedSubview(answerLabel2)
        stackView.addArrangedSubview(switchAnswer2)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView3: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.addArrangedSubview(answerLabel3)
        stackView.addArrangedSubview(switchAnswer3)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView4: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.addArrangedSubview(answerLabel4)
        stackView.addArrangedSubview(switchAnswer4)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView5: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.addArrangedSubview(answerLabel5)
        stackView.addArrangedSubview(switchAnswer5)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView6: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.addArrangedSubview(answerLabel6)
        stackView.addArrangedSubview(switchAnswer6)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView7: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.addArrangedSubview(answerLabel7)
        stackView.addArrangedSubview(switchAnswer7)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var stackView8: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        stackView.addArrangedSubview(answerLabel8)
        stackView.addArrangedSubview(switchAnswer8)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var nextQuestionButton: UIButton = {
        let button = UIButton()
        button.setTitle("Следующий вопрос >>>", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(
            self,
            action: #selector(answerButtonPressed),
            for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupSubviews(progressView, questionLabel, stackView1, stackView2, stackView3, stackView4, stackView5, stackView6, stackView7, stackView8, nextQuestionButton)
        setConstraints()
        updateUI()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func addAnswers(with answers: [Answer]) {
        let answerArray = [stackView1, stackView2, stackView3, stackView4, stackView5, stackView6, stackView7, stackView8]
        
        for _ in answerArray {
            let label = [answerLabel1, answerLabel2, answerLabel3, answerLabel4, answerLabel5, answerLabel6, answerLabel7, answerLabel8]
            
            for (label, answer) in zip(label, answers) {
                label.text = answer.title
            }
        }
    }
    
    private func setConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(progressView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150))
        constraints.append(progressView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -10))
        constraints.append(progressView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: +10))
        
        constraints.append(questionLabel.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 10))
        constraints.append(questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(stackView1.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 60))
        constraints.append(stackView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(stackView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        constraints.append(stackView2.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 10))
        constraints.append(stackView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(stackView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        constraints.append(stackView3.topAnchor.constraint(equalTo: stackView2.bottomAnchor, constant: 10))
        constraints.append(stackView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(stackView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        constraints.append(stackView4.topAnchor.constraint(equalTo: stackView3.bottomAnchor, constant: 10))
        constraints.append(stackView4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(stackView4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        constraints.append(stackView5.topAnchor.constraint(equalTo: stackView4.bottomAnchor, constant: 10))
        constraints.append(stackView5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(stackView5.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        constraints.append(stackView6.topAnchor.constraint(equalTo: stackView5.bottomAnchor, constant: 10))
        constraints.append(stackView6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(stackView6.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        constraints.append(stackView7.topAnchor.constraint(equalTo: stackView6.bottomAnchor, constant: 10))
        constraints.append(stackView7.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(stackView7.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        constraints.append(stackView8.topAnchor.constraint(equalTo: stackView7.bottomAnchor, constant: 10))
        constraints.append(stackView8.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40))
        constraints.append(stackView8.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40))
        
        constraints.append(nextQuestionButton.topAnchor.constraint(equalTo: stackView8.bottomAnchor, constant: 40))
        constraints.append(nextQuestionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60))
        constraints.append(nextQuestionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc private func answerButtonPressed() {
        let switchAnswer = [switchAnswer1, switchAnswer2, switchAnswer3, switchAnswer4, switchAnswer5, switchAnswer6, switchAnswer7, switchAnswer8]
        for (switchAnswer, answer) in zip(switchAnswer, currentAnswers) {
            if switchAnswer.isOn {
                answersChosen.append(answer)
            } 
        }
        nextQuestion()
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex == 5 {
            nextQuestionButton.setTitle("Завершить опрос", for: .normal)
            nextQuestionButton.setTitleColor(.red, for: .normal)
        }
        
        switchAnswer1.isOn = false
        switchAnswer2.isOn = false
        switchAnswer3.isOn = false
        switchAnswer4.isOn = false
        switchAnswer5.isOn = false
        switchAnswer6.isOn = false
        switchAnswer7.isOn = false
        switchAnswer8.isOn = false
        
        if questionIndex < questions.count {
            updateUI()
            return
        }
        
        if questionIndex == questions.count {
            nextQuestionButton.isHidden = true
        }
        
        let resultsVC = ResultsViewController()
        resultsVC.answers = answersChosen
        resultsVC.modalPresentationStyle = .automatic
        resultsVC.modalTransitionStyle = .flipHorizontal
        present(resultsVC, animated: true)
        
    }
}

extension QuestionsViewController {
    private func updateUI() {
        
        let currentQuestion = questions[questionIndex]
        questionLabel.text = currentQuestion.title
        
        let totalProgress = Float(questionIndex) / Float(questions.count - 1)
        progressView.setProgress(totalProgress, animated: true)
        
        title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        
        addAnswers(with: currentAnswers)
        
    }
}

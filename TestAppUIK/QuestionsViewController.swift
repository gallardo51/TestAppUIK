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
        setNavBar()
        setupSubviews(progressView, questionLabel, stackView1, stackView2, stackView3, stackView4, stackView5, stackView6, stackView7, stackView8, nextQuestionButton)
        setConstraints()
        updateUI()
    }
    
    private func setNavBar() {
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
        
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            progressView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -10),
            progressView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: +10)
        ])
        
        NSLayoutConstraint.activate([
            questionLabel.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 10),
            questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            questionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            stackView1.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 60),
            stackView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            stackView2.topAnchor.constraint(equalTo: stackView1.bottomAnchor, constant: 10),
            stackView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            stackView3.topAnchor.constraint(equalTo: stackView2.bottomAnchor, constant: 10),
            stackView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            stackView4.topAnchor.constraint(equalTo: stackView3.bottomAnchor, constant: 10),
            stackView4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            stackView5.topAnchor.constraint(equalTo: stackView4.bottomAnchor, constant: 10),
            stackView5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView5.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            stackView6.topAnchor.constraint(equalTo: stackView5.bottomAnchor, constant: 10),
            stackView6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView6.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            stackView7.topAnchor.constraint(equalTo: stackView6.bottomAnchor, constant: 10),
            stackView7.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView7.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            stackView8.topAnchor.constraint(equalTo: stackView7.bottomAnchor, constant: 10),
            stackView8.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView8.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            nextQuestionButton.topAnchor.constraint(equalTo: stackView8.bottomAnchor, constant: 40),
            nextQuestionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            nextQuestionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60)
        ])
        
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
        
        let resultsVC = ResultsViewController()
        resultsVC.answers = answersChosen
        resultsVC.modalPresentationStyle = .automatic
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

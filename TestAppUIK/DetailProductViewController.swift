//
//  DetailProductViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 05.06.2024.
//

import UIKit

class DetailProductViewController: UIViewController, UIScrollViewDelegate {
    
    var item: Item!
    
    private lazy var verticalScrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect(
            x: 0,
            y: 0,
            width: 400,
            height: 1200))
        scrollView.isPagingEnabled = true
        return scrollView
    }()
    
    private lazy var productImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: item.name)
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var productTitle: CustomLabel = {
        let label = CustomLabel(
            title: "\(item.name)",
            alignment: .center,
            textFont: .boldSystemFont(ofSize: 20.0))
        return label
    }()
    
    private lazy var productDescription: CustomLabel = {
        let label = CustomLabel(
            title: "\(item.description)",
            alignment: .natural,
            textFont: .systemFont(ofSize: 15))
        return label
    }()
    
    private lazy var productAdvantage: CustomLabel = {
        let label = CustomLabel(
            title: "\(item.advantage)",
            alignment: .natural,
            textFont: .systemFont(ofSize: 15))
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "\(item.name)"
        setCustomBackButton()

        setupSubviews(verticalScrollView, productImage, productTitle, productDescription, productAdvantage)
        setConstraints()
        
        verticalScrollView.contentSize = CGSize(
            width: verticalScrollView.frame.width,
            height: 1600
        )
        self.verticalScrollView.addSubview(productImage)
        self.verticalScrollView.addSubview(productTitle)
        self.verticalScrollView.addSubview(productDescription)
        self.verticalScrollView.addSubview(productAdvantage)
        self.verticalScrollView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
        
        constraints.append(verticalScrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0))
        constraints.append(verticalScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0))
        constraints.append(verticalScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0))
        constraints.append(verticalScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0))
        
        constraints.append(productImage.centerXAnchor.constraint(equalTo: verticalScrollView.centerXAnchor, constant: 0))
        constraints.append(productImage.topAnchor.constraint(equalTo: verticalScrollView.topAnchor, constant: -160))
        constraints.append(productImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(productImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(productTitle.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: -150))
        constraints.append(productTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(productTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(productDescription.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 20))
        constraints.append(productDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(productDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(productAdvantage.topAnchor.constraint(equalTo: productDescription.bottomAnchor, constant: 20))
        constraints.append(productAdvantage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(productAdvantage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
}



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
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 400, height: 1200))
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
    
    private lazy var productTitle: UILabel = {
        let label = UILabel()
        label.text = "\(item.name)"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 20.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var productDescription: UILabel = {
        let label = UILabel()
        label.text = "\(item.description)"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var productAdvantage: UILabel = {
        let label = UILabel()
        label.text = "\(item.advantage)"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setNavBar()
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
    
    private func setNavBar() {
        title = "\(item.name)"
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
            verticalScrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            verticalScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            verticalScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            verticalScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            productImage.centerXAnchor.constraint(equalTo: verticalScrollView.centerXAnchor, constant: 0),
            productImage.topAnchor.constraint(equalTo: verticalScrollView.topAnchor, constant: -160),
            productImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            productImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            productTitle.topAnchor.constraint(equalTo: productImage.bottomAnchor, constant: -150),
            productTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            productTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            productDescription.topAnchor.constraint(equalTo: productTitle.bottomAnchor, constant: 20),
            productDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            productDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            productAdvantage.topAnchor.constraint(equalTo: productDescription.bottomAnchor, constant: 20),
            productAdvantage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            productAdvantage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}



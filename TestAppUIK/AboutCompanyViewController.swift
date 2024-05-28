//
//  AboutCompanyViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 26.05.2024.
//

import UIKit

private let reuseIdentifier = "Cell1"

class AboutCompanyViewController: UIViewController {
    var discountCollectionView: UICollectionView?
    
    private lazy var aboutCompanyText: UILabel = {
        let label = UILabel()
        label.text = "Компания Kerr была основана в 1891 году"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setNavBar()
        setCollectionView()
        setupSubviews(discountCollectionView ?? UICollectionView(), aboutCompanyText)
        setConstraints()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setCollectionView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 360, height: 200)
        
        discountCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        discountCollectionView?.register(DiscountCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        discountCollectionView?.backgroundColor = UIColor.white
        discountCollectionView?.dataSource = self
        discountCollectionView?.delegate = self
        
        self.view = view
        
        
    }
    
    private func setNavBar() {
        title = "О компании"
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
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            aboutCompanyText.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
            aboutCompanyText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            aboutCompanyText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}

extension AboutCompanyViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! DiscountCell
        return cell
    }
}

extension AboutCompanyViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

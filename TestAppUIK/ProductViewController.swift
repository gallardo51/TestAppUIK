//
//  ProductViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 27.05.2024.
//

import UIKit

private let reuseIdentifier = "Cell"

class ProductCollectionViewController: UIViewController {
    var productCollectionView: UICollectionView?
    
    private var products = Product.getProduct()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavBar()
        setCollectionView()
        
    }
    
    private func setCollectionView() {
        
        let view = UIView()
        view.backgroundColor = .white
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 110, height: 110)
        
        productCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        productCollectionView?.register(DiscountCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        productCollectionView?.backgroundColor = UIColor.white
        productCollectionView?.dataSource = self
        productCollectionView?.delegate = self
        
        view.addSubview(productCollectionView ?? UICollectionView())
        
        self.view = view
        
    }
    
    private func setNavBar() {
        title = "Продукты"
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ProductCollectionViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        products.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products[0].item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! DiscountCell
        let product = products[0].item[indexPath.row]
        
        cell.label.text = product.name
        cell.image.image = UIImage(named: product.name)
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 12
        return cell
    }
}

extension ProductCollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

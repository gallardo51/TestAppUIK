//
//  ProductViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 27.05.2024.
//

import UIKit

private let reuseIdentifier = "Cell"

class ProductCollectionViewController: UIViewController {
    
    let headerRegistration = UICollectionView.SupplementaryRegistration<SectionHeader>(elementKind: "Header") { supplementaryView, elementKind, indexPath in
        supplementaryView.title.text = "\(elementKind) for section \(indexPath.section)"
    }
    
    var productCollectionView: UICollectionView?
    
    private var products = Product.getProduct()
    
    var productIndex = 0
    
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
        //        layout.headerReferenceSize = CGSize(width: 20, height: 20)
        
        productCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        productCollectionView?.register(DiscountCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        productCollectionView?.register(SectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeader.reuserId)
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 40)
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: SectionHeader.reuserId, for: indexPath) as? SectionHeader {
            sectionHeader.title.text = "\(products[indexPath.section].nameOfGroup)"
            return sectionHeader
        }
        return UICollectionReusableView()
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        products.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products[section].item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! DiscountCell
        let product = products[indexPath.section].item[indexPath.item]
        
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

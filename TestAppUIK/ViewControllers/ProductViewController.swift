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
    
    //MARK: Private properties
    private var products = Product.getProduct()
    private var filteredProducts: [Item] = []
    
    private let searchController = UISearchController(searchResultsController: nil)
    private var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    private var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    
    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "Продукты"
        navigationItem.hidesBackButton = true
        
        setCollectionView()
        setupSearchController()
    }
    
    private func setCollectionView() {
        
        let view = UIView()
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        layout.itemSize = CGSize(width: 110, height: 110)
        layout.headerReferenceSize = CGSize(width: 20, height: 40)
        
        productCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        productCollectionView?.register(ProductCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        productCollectionView?.register(SectionHeader.self,
                                        forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                        withReuseIdentifier: SectionHeader.reuserId)
        
        productCollectionView?.backgroundColor = UIColor.white
        
        productCollectionView?.dataSource = self
        productCollectionView?.delegate = self
        
        view.addSubview(productCollectionView ?? UICollectionView())
        
        self.view = view
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

// MARK: - Collection View Data Source
extension ProductCollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if let sectionHeader = collectionView.dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: SectionHeader.reuserId,
            for: indexPath
        ) as? SectionHeader {
            sectionHeader.title.text = isFiltering ? " " : "\(products[indexPath.section].nameOfGroup)"
            return sectionHeader
        }
        return UICollectionReusableView()
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        isFiltering ? 1 : products.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        isFiltering ? filteredProducts.count : products[section].item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ProductCell
        let product = isFiltering ? filteredProducts[indexPath.item] : products[indexPath.section].item[indexPath.item]
        
        cell.label.text = product.name
        cell.image.image = UIImage(named: product.name)
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 12
        return cell
    }
    
}

// MARK: - Collection View Delegate
extension ProductCollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = DetailProductViewController()
        let item = isFiltering ? filteredProducts[indexPath.item] : products[indexPath.section].item[indexPath.item]
        detailVC.item = item
        show(detailVC, sender: item)
    }
}

// MARK: - UISearchResultsUpdating
extension ProductCollectionViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    
    private func filterContentForSearchText(_ searchText: String) {
        
        filteredProducts = products.flatMap { $0.item.filter { item in
            item.name.lowercased().contains(searchText.lowercased()) }
        }
        
        productCollectionView?.reloadData()
        print(filteredProducts)
    }
    
    // MARK: - Private methods
    private func setupSearchController() {
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Поиск"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        if let textField = searchController.searchBar.value(forKey: "searchField") as? UITextField {
            textField.font = UIFont.boldSystemFont(ofSize: 17)
            textField.textColor = .lightGray
            textField.backgroundColor = .white
        }
    }
}



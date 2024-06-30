//
//  AboutCompanyViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 26.05.2024.
//

import UIKit

class AboutCompanyViewController: UIViewController, UIScrollViewDelegate {
    
    private let companyInfo = CompanyInformation.getCompanyInfo()
    
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    var discountImages = ["discount1", "discount2", "discount3", "discount4", "discount5"]
    
    private lazy var pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.currentPageIndicatorTintColor = .systemBlue
        pageControl.pageIndicatorTintColor = .gray
        pageControl.backgroundColor = .clear
        pageControl.numberOfPages = discountImages.count
        return pageControl
    }()
    
    private lazy var discountScrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect(
            x: 10,
            y: 10,
            width: 370,
            height: 120))
        scrollView.isPagingEnabled = true
        scrollView.layer.cornerRadius = 10
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    private lazy var verticalScrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect(
            x: 0,
            y: 160,
            width: 400,
            height: 1200))
        scrollView.isPagingEnabled = true
        return scrollView
    }()
    
    private lazy var aboutCompanyText: CustomLabel = {
        let label = CustomLabel(
            title: "\(companyInfo.titleAboutCompany)",
            alignment: .natural,
            textFont: .systemFont(ofSize: 15))
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "О компании"
        navigationItem.hidesBackButton = true
        
        setupSubviews(verticalScrollView)
        setupDiscountScrollView()
        setupVerticalScrollView()
        
        setConstraints()
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageControl.currentPage = Int(pageNumber)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setupDiscountScrollView() {
        
        for index in 0..<discountImages.count {
            frame.origin.x = discountScrollView.frame.size.width * CGFloat(index)
            frame.size = discountScrollView.frame.size
            let imageView = UIImageView(frame: frame)
            imageView.image = UIImage(named: discountImages[index])
            self.discountScrollView.addSubview(imageView)
        }
        
        discountScrollView.contentSize = CGSize(
            width: (discountScrollView.frame.size.width * CGFloat(discountImages.count)),
            height: discountScrollView.frame.height
        )
        discountScrollView.delegate = self
        
    }
    
    private func setupVerticalScrollView() {
        
        self.verticalScrollView.addSubview(discountScrollView)
        self.verticalScrollView.addSubview(pageControl)
        self.verticalScrollView.addSubview(aboutCompanyText)
        self.verticalScrollView.delegate = self
        
        
        verticalScrollView.contentSize = CGSize(
            width: verticalScrollView.frame.width,
            height: 2700
        )
    }
    
    private func setConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(verticalScrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0))
        constraints.append(verticalScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0))
        constraints.append(verticalScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0))
        constraints.append(verticalScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0))
        
        constraints.append(pageControl.topAnchor.constraint(equalTo: verticalScrollView.topAnchor, constant: 130))
        constraints.append(pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        constraints.append(aboutCompanyText.topAnchor.constraint(equalTo: pageControl.bottomAnchor, constant: 10))
        constraints.append(aboutCompanyText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20))
        constraints.append(aboutCompanyText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
}


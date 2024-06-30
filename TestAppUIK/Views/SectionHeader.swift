//
//  SectionHeader.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 04.06.2024.
//

import UIKit

class SectionHeader: UICollectionReusableView {
    
    static let reuserId = "SectionHeader"
    
    let title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customizeElements()
        setupConstraints()
    }
    
    private func customizeElements() {
        title.textColor = .lightGray
        title.textAlignment = .justified
        title.font = UIFont(name: "rockwell", size: 15)
        title.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupConstraints() {
        addSubview(title)
        
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 30),
            title.heightAnchor.constraint(equalToConstant: 40),
            title.widthAnchor.constraint(equalToConstant: 400),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  DiscountCell.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 28.05.2024.
//

import UIKit

class DiscountCell: UICollectionViewCell {
    private var images: UIImageView = {
        let images = UIImageView()
        images.image = UIImage(systemName: "person.fill")
        images.backgroundColor = UIColor.gray
        images.translatesAutoresizingMaskIntoConstraints = false
        return images
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setConstraints()
    }
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            images.widthAnchor.constraint(equalToConstant: 360),
            images.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        addSubview(images)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

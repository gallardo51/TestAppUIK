//
//  DiscountCell.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 28.05.2024.
//

import UIKit

class DiscountCell: UICollectionViewCell {
    var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage()
        image.layer.cornerRadius = image.frame.width / 2
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var label: UILabel = {
        let label =  UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 10)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 12
        contentView.addSubview(label)
        contentView.addSubview(image)
//        setConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.frame = CGRect(
            x: 5,
            y: contentView.frame.size.height-60,
            width: contentView.frame.size.width-10,
            height: contentView.frame.size.height-20
        )
        
        image.frame = CGRect(
            x: 5,
            y: 5,
            width: contentView.frame.size.width-10,
            height: contentView.frame.size.height-30
        )
    }
    
//    private func setConstraints() {
//        
//        NSLayoutConstraint.activate([
//            image.widthAnchor.constraint(equalToConstant: 120),
//            image.heightAnchor.constraint(equalToConstant: 120)
//        ])
//        
//        NSLayoutConstraint.activate([
//            label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: -20),
//            label.leadingAnchor.constraint(equalTo: image.leadingAnchor, constant: -20),
//            label.trailingAnchor.constraint(equalTo: image.trailingAnchor, constant: -20)
//        ])
//        
//        self.addSubview(image)
//        self.addSubview(label)
//        
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

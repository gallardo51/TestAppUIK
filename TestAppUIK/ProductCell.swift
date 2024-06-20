//
//  ProductCell.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 28.05.2024.
//

import UIKit

class ProductCell: UICollectionViewCell {
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
        addViews()
    }
    
    func addViews() {
        
        addSubview(image)
        addSubview(label)
        
        setConstraints()
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            image.leftAnchor.constraint(equalTo: leftAnchor, constant: 5),
            image.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            image.heightAnchor.constraint(equalToConstant: contentView.frame.size.height-30),
            image.widthAnchor.constraint(equalToConstant: contentView.frame.size.width-10)
        ])
        
        NSLayoutConstraint.activate([
            label.leftAnchor.constraint(equalTo: leftAnchor, constant: 5),
            label.bottomAnchor.constraint(equalTo: image.bottomAnchor, constant: 55),
            label.widthAnchor.constraint(equalToConstant: contentView.frame.size.width-10),
            label.heightAnchor.constraint(equalToConstant: contentView.frame.size.height-20)
            
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

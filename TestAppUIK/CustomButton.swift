//
//  CustomButton.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 26.05.2024.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(title: String, color: UIColor, font: UIFont, background: UIColor) {
        super.init(frame: .zero)
        
        setTitle(title, for: .normal)
        backgroundColor = background
        titleLabel?.font = font
        setTitleColor(color, for: .normal)
        layer.cornerRadius = 4
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


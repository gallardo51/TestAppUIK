//
//  CustomLabel.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 30.06.2024.
//

import UIKit

class CustomLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init() {
        super.init(frame: .zero)
        
        numberOfLines = 0
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    init(title: String, alignment: NSTextAlignment, textFont: UIFont) {
        super.init(frame: .zero)
        
        text = title
        numberOfLines = 0
        textAlignment = alignment
        font = textFont
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

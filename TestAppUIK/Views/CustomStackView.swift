//
//  CustomStackView.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 30.06.2024.
//

import UIKit

class CustomStackView: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init() {
        super.init(frame: .zero)
        
        axis = .horizontal
        distribution = .equalSpacing
        spacing = 10
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  CustomTextField.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 26.05.2024.
//

import UIKit

class CustomTextFiled: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(placeholderName: String) {
        super.init(frame: .zero)
        
        placeholder = placeholderName
        borderStyle = .roundedRect
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

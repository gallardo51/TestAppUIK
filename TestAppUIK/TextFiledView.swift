//
//  TextFiledView.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 26.05.2024.
//

import UIKit

class TextFiledView: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTF()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTF() {
        placeholder = ""
        borderStyle = .roundedRect
    }
}

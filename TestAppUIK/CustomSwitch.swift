//
//  CustomSwitch.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 30.06.2024.
//

import UIKit

class CustomSwitch: UISwitch {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

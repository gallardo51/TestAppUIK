//
//  EmployeeCell.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 14.06.2024.
//

import UIKit

extension UITableViewCell {
    func configure(with employeeList: Employee) {
        var content = defaultContentConfiguration()
        
        content.text = employeeList.fullName
        content.secondaryText = employeeList.post
        content.image = UIImage(named: employeeList.fullName)
        contentConfiguration = content
    }
}


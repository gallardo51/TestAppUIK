//
//  EmployeeViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 14.06.2024.
//

import UIKit

class EmployeeViewController: UITableViewController {
    
    private var employeeList = Employee.getEmployee()
    private let cellID = "CurrentEmployee"
    
    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        title = "Сотрудники"
        navigationItem.hidesBackButton = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        tableView.rowHeight = 80
    }
    
    // MARK: - Table view data source
    
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        return 0
    //    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        employeeList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        let employeeList = employeeList[indexPath.row]
        cell.configure(with: employeeList)
        return cell
    }
    
    // MARK: - Navigation
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let employeeDetailVC = EmployeeDetailViewController()
        let employeeList = employeeList[indexPath.row]
        employeeDetailVC.employeeList = employeeList
        show(employeeDetailVC, sender: employeeList)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

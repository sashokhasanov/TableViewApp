//
//  SectionedListViewController.swift
//  TableViewApp
//
//  Created by Сашок on 28.12.2021.
//

import UIKit

class SectionedListViewController: UITableViewController {

    var persons: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionedPersonCell", for: indexPath)

        let person = persons[indexPath.section]
        
        var contentConfiguration = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            contentConfiguration.text = person.phone
            contentConfiguration.image = UIImage(systemName: "phone")
        default:
            contentConfiguration.text = person.email
            contentConfiguration.image = UIImage(systemName: "envelope")
        }

        cell.contentConfiguration = contentConfiguration
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

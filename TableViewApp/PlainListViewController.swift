//
//  PlainListViewController.swift
//  TableViewApp
//
//  Created by Сашок on 28.12.2021.
//

import UIKit

class PlainListViewController: UITableViewController {

    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = persons[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "simplePersonCell", for: indexPath)

        var contentConfiguration = cell.defaultContentConfiguration()
        contentConfiguration.text = person.fullName

        cell.contentConfiguration = contentConfiguration

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailsController = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        detailsController.person = persons[indexPath.row]
    }
}

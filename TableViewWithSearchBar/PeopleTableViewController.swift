//
//  PeopleTableViewController.swift
//  TableViewWithSearchBar
//
//  Created by C4Q  on 11/6/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class PeopleTableViewController: UITableViewController {
    
    var personArr = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personArr = Person.allPeople
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArr.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = personArr[indexPath.row]
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Person Cell - TBV", for: indexPath)
        cell.textLabel?.text = person.name
        cell.detailTextLabel?.text = person.dob
        return cell
    }

}

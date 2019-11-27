//
//  ContactListController.swift
//  TestTableView
//
//  Created by Murray Fenstermaker on 11/26/19.
//  Copyright © 2019 Nostalgiabox. All rights reserved.
//

import UIKit

class ContactListController: UITableViewController {

    var contacts = ContactsSource.contacts
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Data Source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        let contact = contacts[indexPath.row]
        
        cell.textLabel?.text = contact.firstName
        cell.imageView?.image = contact.image
        cell.detailTextLabel?.text = contact.lastName
        
        return cell
    }

}

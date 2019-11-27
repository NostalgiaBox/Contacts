//
//  ContactDetailController.swift
//  TestTableView
//
//  Created by Murray Fenstermaker on 11/26/19.
//  Copyright © 2019 Nostalgiabox. All rights reserved.
//

import UIKit

class ContactDetailController: UITableViewController {

    var contact: Contact?
    
    // Outlets
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func configureView() {
        guard let contact = contact else { return }
        
        phoneNumberLabel.text = contact.phone
        emailLabel.text = contact.email
        streetAddressLabel.text = contact.street
    }

   
}

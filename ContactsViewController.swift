//
//  ContactsViewController.swift
//  Contact
//
//  Created by Phi Hoang Huy on 2/15/19.
//  Copyright © 2019 Phi Hoang Huy. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let contactsTableView = UITableView()
    private let contacts = ContactAPI.getContacts()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactTableViewCell
        cell.contact = contacts[indexPath.row]
        return cell
    }
    // change the the height of the cell
    override func viewDidLoad() {
        super.viewDidLoad()
        contactsTableView.rowHeight = 100
        contactsTableView.register(ContactTableViewCell.self, forCellReuseIdentifier: "contactCell")
        contactsTableView.dataSource = self
        view.addSubview(contactsTableView)
        // Set the postition of table view
        contactsTableView.translatesAutoresizingMaskIntoConstraints = false
        // set AutoLayout to make table dtata don't go beyond the status bar
        contactsTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
        contactsTableView.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        contactsTableView.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        contactsTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        //End
        setUpNavigation()
        
        // Do any additional setup after loading the view.
        
    }
    func setUpNavigation() {
        navigationItem.title = "Contacts"
        self.navigationController?.navigationBar.barTintColor = _ColorLiteralType(red: 1, green: 0.7647058824, blue: 0.8392156863, alpha: 1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor:_ColorLiteralType(red: 1, green: 1, blue: 1, alpha: 1)]
    }
}


//
//  AzChatViewController.swift
//  Constraints-Text-First
//
//  Created by Famil Mustafayev on 2.02.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class AzChatViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var index: Int = 0
    
    let imageData = ["Chloe", "Daniel", "Jack", "John", "Jonathan", "Mark", "Maykl", "Chloe", "Daniel", "Jack", "John", "Jonathan", "Mark", "Maykl"]
    let messaje = ["First name is required.",
                   "Last name is required.",
                   "Email is required.",
                   "Password is required.",
                   "Password is required.",
                   "Confirm password is required.",
                   "Password and Confirm password are not matching.",
                   "Password and Confirm password are not matching.",
                   "Email is required.",
                   "Password is required.",
                   "Password is required.",
                   "Confirm password is required.",
                   "Password is required.",
                   "Password and Confirm password are not matching.",]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

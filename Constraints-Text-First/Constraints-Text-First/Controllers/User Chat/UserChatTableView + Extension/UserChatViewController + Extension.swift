//
//  UserChatViewController + Extension.swift
//  Constraints-Text-First
//
//  Created by Famil Mustafayev on 2.02.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

extension UserChatViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let message = AzChatViewController()
        
        return message.messaje.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! UserChatTableViewCell

        return cell
    }

    
}

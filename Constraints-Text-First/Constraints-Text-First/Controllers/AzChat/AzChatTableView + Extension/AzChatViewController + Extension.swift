//
//  AzChatViewController + Extension.swift
//  Constraints-Text-First
//
//  Created by Famil Mustafayev on 2.02.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

extension AzChatViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AzChatTableViewCell
        cell.azChatImageView.image = UIImage(named: imageData[indexPath.row])
        cell.azChatImageView.layer.cornerRadius = cell.azChatImageView.frame.width/2
        cell.azChatNameLabel.text = imageData[indexPath.row]
        cell.azChatMessajeLabel.text = messaje[indexPath.row]
        
        return cell    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageData.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "segue", sender: self)
        index = indexPath.row
        print(index)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue"{
            let dvc = segue.destination as! UserChatViewController
            DispatchQueue.main.async {
                dvc.title = self.imageData[self.index]
                self.tableView.reloadData()
            }
        }
    }
}

//
//  AzChatTableViewCell.swift
//  Constraints-Text-First
//
//  Created by Famil Mustafayev on 2.02.2021.
//  Copyright © 2021 Famil Mustafayev. All rights reserved.
//

import UIKit

class AzChatTableViewCell: UITableViewCell {

    @IBOutlet weak var azChatImageView: UIImageView!
    @IBOutlet weak var azChatNameLabel: UILabel!
    @IBOutlet weak var azChatMessajeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

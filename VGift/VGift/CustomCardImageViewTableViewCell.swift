//
//  CustomCardImageViewTableViewCell.swift
//  VGift
//
//  Created by Aruna Srinivasalu on 7/10/18.
//  Copyright © 2018 Aruna Srinivasalu. All rights reserved.
//

import UIKit

class CustomCardImageViewTableViewCell: UITableViewCell {

    @IBOutlet weak var cardImageDisplay: UIImageView!
    
    @IBOutlet weak var messageText: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

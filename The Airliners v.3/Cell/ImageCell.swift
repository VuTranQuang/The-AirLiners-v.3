//
//  ImageCell.swift
//  The Airliners v.3
//
//  Created by VuTQ10 on 12/13/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var imageCell: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("backButton"), object: nil)
    }
}

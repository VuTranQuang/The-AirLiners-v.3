//
//  InfomationCell.swift
//  The Airliners v.3
//
//  Created by VuTQ10 on 12/13/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class InfomationCell: UITableViewCell {
    @IBOutlet weak var infoRight: UILabel!
    
    @IBOutlet weak var titleLeft: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

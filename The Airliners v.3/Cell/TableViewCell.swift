//
//  TableViewCell.swift
//  The Airliners
//
//  Created by VuTQ10 on 11/29/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imagePlanes: UIImageView!
    @IBOutlet weak var namePlanes: UILabel!
    @IBOutlet weak var shortInfo: UILabel!
    @IBOutlet weak var viewCustom: View!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func binding(item: Airliner) {
        self.imagePlanes.image = UIImage(named: item.imagePlanes! + ".jpg")
        self.namePlanes.text = item.namePlanes
        self.shortInfo.text = item.shortInfo
    }
    
  
}

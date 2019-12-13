//
//  Airlines.swift
//  The Airliners v.3
//
//  Created by VuTQ10 on 12/12/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import Foundation
import UIKit

struct Airliner {
    var namePlanes: String?
    var shortInfo: String?
    var imagePlanes: String?
    init(namePlanes: String, shortInfo: String, imagePlanes: String) {
        self.namePlanes = namePlanes
        self.shortInfo = shortInfo
        self.imagePlanes = imagePlanes
    }
    
    var nationalOrigin: String?
    var manufacturer: String?
    var firstFly: String?
    var produced: String?
    var numberBuild: String?
    var status: String?
    var longDescrip: String?
    init(nationalOrigin: String, manufacturer: String, firstFly: String, produced: String, numberBuild: String, status: String, longDescrip: String) {
        self.nationalOrigin = nationalOrigin
        self.manufacturer = manufacturer
        self.firstFly = firstFly
        self.produced = produced
        self.numberBuild = numberBuild
        self.status = status
        self.longDescrip = longDescrip
    }
    
    var nationName: String?
    var manuName: String?
    var firstName: String?
    var proName: String?
    var numbName: String?
    var statust: String?
    var information: String?
    init(nationName: String, manuName: String, firstName: String, proName: String, numbName: String, statust: String, information: String) {
        self.nationName = nationName
        self.manuName = manuName
        self.firstName = firstName
        self.proName = proName
        self.numbName = numbName
        self.statust = statust
        self.information = information
    }
}

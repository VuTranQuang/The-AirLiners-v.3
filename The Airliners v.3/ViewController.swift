//
//  ViewController.swift
//  The Airliners v.3
//
//  Created by VuTQ10 on 12/12/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var items = [Airliner]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.tableView.separatorStyle = .none
        var myArray: NSArray?
        if let path = Bundle.main.path(forResource: "PlanesList", ofType: "plist") {
            myArray = NSArray(contentsOfFile: path)
        }
        myArray?.forEach { item in
            items.append(Airliner(namePlanes: (item as! NSDictionary)["name"] as! String, shortInfo: (item as! NSDictionary)["shortInfo"] as! String, imagePlanes: (item as! NSDictionary)["image"] as! String))
            }
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.binding(item: items[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}

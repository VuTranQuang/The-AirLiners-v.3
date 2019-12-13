//
//  ViewControllerInfomation.swift
//  The Airliners v.3
//
//  Created by VuTQ10 on 12/13/19.
//  Copyright © 2019 VuTQ10. All rights reserved.
//

import UIKit

class ViewControllerInfomation: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var titleName = [String]()
    var valuesInfo = [String]()
    
    var images: Airliner?
    var valueInfo: Airliner?
    var nameInfo: Airliner?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add Values
        valuesInfo.append((images?.imagePlanes)!)
        valuesInfo.append((valueInfo?.longDescrip)!)
        valuesInfo.append((nameInfo?.information)!)
        valuesInfo.append((valueInfo?.nationalOrigin)!)
        valuesInfo.append((valueInfo?.manufacturer)!)
        valuesInfo.append((valueInfo?.firstFly)!)
        valuesInfo.append((valueInfo?.produced)!)
        valuesInfo.append((valueInfo?.numberBuild)!)
        valuesInfo.append((valueInfo?.status)!)
        
        
        // add Title
        titleName.append((images?.imagePlanes)!)
        titleName.append((valueInfo?.longDescrip)!)
        titleName.append((nameInfo?.information)!)
        titleName.append((nameInfo?.nationName)!)
        titleName.append((nameInfo?.manuName)!)
        titleName.append((nameInfo?.firstName)!)
        titleName.append((nameInfo?.proName)!)
        titleName.append((nameInfo?.numbName)!)
        titleName.append((nameInfo?.statust)!)
        
        
        self.tableView.register(UINib(nibName: "ImageCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.tableView.register(UINib(nibName: "TextViewCell", bundle: nil), forCellReuseIdentifier: "cell1")
        self.tableView.register(UINib(nibName: "InfomationCell", bundle: nil), forCellReuseIdentifier: "cell2")
        self.tableView.register(UINib(nibName: "InfTitleCell", bundle: nil), forCellReuseIdentifier: "title")
        
        // call back frome InformationCell. backButton
        NotificationCenter.default.addObserver(self, selector: #selector(backButton(notification:)), name: Notification.Name("backButton"), object: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.alpha = 0
    }
    override func viewDidLayoutSubviews() {
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 1))
    }
    
    @objc func backButton(notification: NSNotification) {
        self.navigationController?.navigationBar.alpha = 1
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension ViewControllerInfomation: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return valuesInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ImageCell
            cell.imageCell.image = UIImage(named: (images?.imagePlanes)! + ".jpg")
            self.tableView.separatorStyle = .none
            return cell
        }
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! TextViewCell
            cell.textViewCell.text = valueInfo?.longDescrip
            self.tableView.separatorStyle = .none
            return cell
        }
        if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "title", for: indexPath) as! InfTitleCell
            cell.infTitle.text = nameInfo?.information
            self.tableView.separatorStyle = .none
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! InfomationCell
        cell.infoRight.text = valuesInfo[indexPath.row]
        cell.titleLeft.text = titleName[indexPath.row]
        self.tableView.separatorStyle = .singleLine
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return self.view.frame.height / 3
        }
        if indexPath.row == 1 {
            return self.view.frame.height / 4
        }
        return 50
    }
    
    
}



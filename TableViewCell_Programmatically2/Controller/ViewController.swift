//
//  ViewController.swift
//  TableViewCell_Programmatically2
//
//  Created by Hwang on 2020/02/10.
//  Copyright © 2020 Hwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView : UITableView!
    var useArr : [Thing] = [
        Thing(name: "Cafelore", phone: "12", image: "cafelore.jpg"),
        Thing(name: "homei", phone: "32", image: "homei.jpg"),
        Thing(name: "cafeloisl", phone: "43", image: "cafeloisl.jpg"),
        Thing(name: "cafedeadend", phone: "22", image: "cafedeadend.jpg"),
        Thing(name: "forkeerestaurant", phone: "55", image: "forkeerestaurant.jpg")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableView()
    }
    
    func setTableView() {
        tableView = UITableView(frame: self.view.frame)
        tableView.backgroundColor = .clear
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.separatorColor = .clear
        tableView.backgroundColor = .white
        self.view.addSubview(tableView)
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "Cell")
    }
}


extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return useArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomTableViewCell else {
            fatalError("Unabel to create cell")
        }
        let row = useArr[indexPath.row]
        
        cell.userImg.image = UIImage(named: row.image!)
        cell.nameLab.text = row.name
        cell.ageLab.text = row.phone
        
        return cell
    }
}

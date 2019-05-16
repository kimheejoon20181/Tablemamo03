//
//  ViewController.swift
//  Tablemamo03
//
//  Created by D7703_22 on 2019. 5. 16..
//  Copyright © 2019년 fb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    @IBOutlet weak var myTableView: UITableView!
    var data = ["A","B","C","D","E"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        
        if row % 2 == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "first", for: indexPath)
            cell.textLabel?.text = data[row]
            cell.detailTextLabel?.text = "row = \(row)"
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "second", for: indexPath)
            let row = indexPath.row
            
            cell.textLabel?.text = data[row]
            cell.detailTextLabel?.text = "row = \(row)"
            return cell
        }
        
    }


}


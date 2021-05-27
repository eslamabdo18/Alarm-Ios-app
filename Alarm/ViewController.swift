//
//  ViewController.swift
//  Alarm
//
//  Created by Eslam Ayman  on 12/5/19.
//  Copyright © 2019 Eslam Ayman . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var cellValues:[alarms] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var alarm = alarms()
        alarm.hour = "12"
        alarm.min = "00"
        alarm.Enable = true
        cellValues.append(alarm)
       
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let data = cellValues[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tabCell") as! TableViewCell
        cell.set(cell: data)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}


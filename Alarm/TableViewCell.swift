//
//  TableViewCell.swift
//  Alarm
//
//  Created by Eslam Ayman  on 12/5/19.
//  Copyright © 2019 Eslam Ayman . All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

  
    @IBOutlet weak var alarmTime: UILabel!
    @IBOutlet weak var ittreation: UILabel!
    @IBOutlet weak var choose: UILabel!
    @IBOutlet weak var slider: UISwitch!
    
    func set(cell:alarms)
    {
        alarmTime.text = cell.hour! + ":" + cell.min!
        ittreation.text = cell.iteration
        choose.text = cell.choose
        slider.setOn(cell.Enable, animated: true)
    }
}

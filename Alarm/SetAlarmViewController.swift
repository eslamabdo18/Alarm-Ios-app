//
//  SetAlarmViewController.swift
//  Alarm
//
//  Created by Eslam Ayman  on 12/5/19.
//  Copyright © 2019 Eslam Ayman . All rights reserved.
//  

import UIKit
import UserNotifications

class SetAlarmViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    var date:Date?
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.timeZone = NSTimeZone.local
    }
    
    

    @IBAction func addAlarm(_ sender: UIButton) {
        let center = UNUserNotificationCenter.current()
               center.requestAuthorization(options:[.alert,.sound]) { (gran, error) in
                   
               }
               let content = UNMutableNotificationContent()
               content.title = "Alarm"
               content.body = "wake up!"
               content.sound = .default
               
//               let date = Date().addingTimeInterval(5)
        var dateCom = Calendar.current.dateComponents([.year,.month,.day,.hour,.minute,.second], from: datePicker.date)
        dateCom.timeZone = NSTimeZone.local
               let trigger = UNCalendarNotificationTrigger(dateMatching: dateCom, repeats: false)
               let id = UUID().uuidString
               let request = UNNotificationRequest(identifier: id, content: content, trigger: trigger)
               center.add(request) { (error) in
                   
               }
    }
    //Mark:- select date from date Picker
    @IBAction func GetDate(_ sender: UIDatePicker) {
        date = sender.date
        print(date!)
    }
}



//
//  ViewController.swift
//  clock
//
//  Created by Sam Greenhill on 2/26/17.
//  Copyright © 2017 simplyAmazingMachines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //weak is xcode will not hold any reference to this object if it is not required. 
    //strong always remain there. 
  
    @IBOutlet weak var clock: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        updateClock()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clock.text = ""
        
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateClock), userInfo: nil, repeats: true)
        
    }

    
    func updateClock() {
        
        let dateNow: NSDate = NSDate()
        let calendar = NSCalendar.current
        let components = calendar.dateComponents([.hour, .minute, .second], from: dateNow as Date)
        
        let hour: Int = (components.hour! > 12 ? components.hour! - 12 : components.hour)!
        
        //the statement above can be written as an if else statement, which it is below
//        var hours: Int = 0
//        if components.hour! > 12 {
//            hours = components.hour! - 12
//        } else {
//            hour = components.hour!
//        }
        
        
        
        let hourString: String = hour > 9 ? "\(hour)" : "0\(hour)"
        
        let minutes = components.minute! > 9 ? "\(components.minute!)" : "0\(components.minute!)"
        let seconds = components.second! > 9 ? "\(components.second!)" : "0\(components.second!)"
        
        let am = components.hour! > 12 ? "PM" : "AM"
        
        let timeString = "\(hourString):\(minutes):\(seconds):\(am)"
       
        //print(components.hour!)
        //will be an optional if there is no !
        
        
        clock.text = timeString
    }


}


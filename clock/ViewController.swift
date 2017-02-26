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
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myNum = 5
        clock.text = "Updated"
        
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateClock), userInfo: nil, repeats: true)
        
    }

    
    func updateClock() {
        print("Updated From Clock")
        
    }


}


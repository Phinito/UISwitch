//
//  ViewController.swift
//  CustomSwitches
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mySwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mySwitch = UISwitch(frame: CGRect(x: 150, y: 200, width: 0, height: 0))
        view.addSubview(mySwitch)
        
        turnSwitchOn()
        
        mySwitch.addTarget(self, action: "mySwitchDidChange:", forControlEvents: UIControlEvents.ValueChanged)
        
        changeMySwitchColors()
    }
    
    func turnSwitchOn()
    {
        mySwitch.setOn(true, animated: true)
        if mySwitch.on {
            println("the switch is on")
        } else {
            println("the switch is off")
        }
    }
    
    @IBAction func mySwitchDidChange(sender: UISwitch)
    {
        println("sender is = \(sender)")
        
        if mySwitch.on {
            println("the switch is on")
        } else {
            println("the switch is off")
        }
    }
    
    func changeMySwitchColors()
    {
        mySwitch.tintColor = UIColor.blackColor()
        mySwitch.onTintColor = UIColor.redColor()
        mySwitch.thumbTintColor = UIColor.greenColor()
    }
}

























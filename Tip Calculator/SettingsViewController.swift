//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Jonathan Wang on 8/17/20.
//  Copyright © 2020 Jonathan Wang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var NightModeSwitch: UISwitch!
    @IBOutlet weak var NightModeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        NightModeSwitch.isOn = false
        NightModeLabel.textColor = UIColor.black
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeMode(_ sender: Any) {
        //let vc1 = ViewController()
        if NightModeSwitch.isOn {
            self.view.backgroundColor = UIColor.black
            NightModeLabel.textColor = UIColor.white
        }
        else {
            self.view.backgroundColor = UIColor.white
            NightModeLabel.textColor = UIColor.black
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

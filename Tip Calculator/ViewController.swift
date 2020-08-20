//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Jonathan Wang on 8/13/20.
//  Copyright © 2020 Jonathan Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Stuff that works
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    //Unchanging Labels
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageInfo: UILabel!
    @IBOutlet weak var totalInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // Update the tip and total labels
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}


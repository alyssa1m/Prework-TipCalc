//
//  ViewController.swift
//  alyssa
//
//  Created by Student on 2/4/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLabel:UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    var onTap: UITapGestureRecognizer!
    
    
    @IBAction func onTap(_ sender: Any) {
         print("Hello")
            
         view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // get the bill
        let bill = Double(billField.text!) ?? 0
        
        //calc tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip )
        totalLabel.text = String(format: "$%.2f", total )
        
        
        
    
    }
}


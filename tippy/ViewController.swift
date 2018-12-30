//
//  ViewController.swift
//  tippy
//
//  Created by Amadou Diallo on 12/29/18.
//  Copyright © 2018 Amadou Diallo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var TipLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func ontap(_ sender: Any) {
        view.endEditing(true)
        
        
    }
    @IBAction func calculatetip(_ sender: Any) {
        
        let tipPercentages = [ 0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill *  tipPercentages[tipControl.selectedSegmentIndex]
       
        let total = bill + tip
            
        TipLabel.text = String ( format: "$%.2f",tip)
        totalLabel.text = String ( format: "$%.2f",total)
    }
}


//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Dianna Carmalt on 5/7/19.
//  Copyright © 2019 Dianna Carmalt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var totalTextField: UITextField!
    @IBOutlet var tipTextField: UITextField!
    @IBOutlet var myFirstLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let total = Double(totalTextField.text!)!
        let tipPercent = Double(tipTextField.text!)! / 100.0
        let tip = String(format: "%.2f", (total * tipPercent))
        let totalBill = String(format: "%.2f", (total + (total * tipPercent)))

        myFirstLabel.text = "Tip: $ \(tip)"
        totalLabel.text = "Total Bill: $ \(totalBill)"
    }
}

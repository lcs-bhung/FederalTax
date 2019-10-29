//
//  ViewController.swift
//  Tax Calculator
//
//  Created by Branton Hung on 2019-10-29.
//  Copyright © 2019 Branton Hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Mark: Properties
    
    @IBOutlet weak var nameOfPerson: UITextField!
    @IBOutlet weak var grossAnnualIncome: UITextField!
    @IBOutlet weak var incomeError: UILabel!
    @IBOutlet weak var nameError: UILabel!
    @IBOutlet weak var taxOwingNumber: UILabel!
    @IBOutlet weak var taxRate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//Calculate
    @IBAction func calculateTax(_ sender: Any) {
    //Get the user imput
        let nameAsString = nameOfPerson.text!
        let annualIncomeAsString = grossAnnualIncome.text!
    //Convert string to an integer
        let annualIncome = Int(annualIncomeAsString)
        var tax = 0
    //Use guards

            guard nameOfPerson.text = String else {
            nameError.text = "Please enter your name"
            }
        guard
        
    
    //Find the tax
        switch annualIncome {
        case 0...47630:
            var tax = 15
        case 47630...95259:
            var tax = Double(20.5)
        case 95295...147667:
            var tax = 26
        case 17667...210371:
            var tax = 29
        default:
            var tax = 33
    }
    let
        }
    }
    




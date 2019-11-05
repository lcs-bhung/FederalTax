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
        let annualIncome = Int(annualIncomeAsString)!
    //Use guards

        guard annualIncome >= 0 else {
            incomeError.text = "Please enter your gross income in dollars"
            return
            }
    //Or if statements
        if nameAsString == ""
        {
            nameError.text = "Please enter your name"
        }
        
        
    var theTax = Int()
    //Find the tax
        switch annualIncome {
        case 0...47630:
            theTax = 15
        case 47630...95259:
            theTax = Int(Double(20.5))
        case 95295...147667:
            theTax = 26
        case 17667...210371:
            theTax = 29
        default:
            theTax = 33
        }
        
    
    
    let taxOwing = Double(annualIncome)*Double(theTax)/100
    taxRate.text = "Effective tax rate is: \(theTax)%"
        taxOwingNumber.text = "\(nameAsString), your federal tax owing is $\(taxOwing)"
    
        }
        
    }
    




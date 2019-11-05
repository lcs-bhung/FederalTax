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
  
        
    
    
        
    //Use Guard statement

        guard Double(annualIncomeAsString) != nil else{
            taxRate.text = "please enter a numeric gross income"
            return
        }
        //Convert string to an integer
        let annualIncome = Double(annualIncomeAsString)!
       
        if nameAsString == ""
        {
            taxOwingNumber.text = "Please enter your name"
            return
        }
        
        
     
    var theTax = Double()
    var taxOwing = Double()
    //Find the tax
        switch annualIncome {
        case 0...47630:
            theTax = Double(15)
            taxOwing = (annualIncome)*(theTax)/100
        case 47631...95259:
            theTax = Double(20.5)
            taxOwing = (annualIncome-47630)*0.205+7133.5
        case 95260...147667:
            theTax = Double(26)
            taxOwing = (annualIncome-95295)*0.26+7133.5+9763.9
        case 147668...210371:
            theTax = Double(29)
            taxOwing = (annualIncome-147667)*0.29+7133.5+9763.9+13625.8
        default:
            theTax = Double(33)
            taxOwing = (annualIncome-210372)*0.33+7133.5+9763.9+13625.82+18183.9
        }
        
        

    taxRate.text = "Effective tax rate is: \(theTax)%"
        taxOwingNumber.text = "\(nameAsString), your federal tax owing is $\(taxOwing)"
    
        }
    
    }
    




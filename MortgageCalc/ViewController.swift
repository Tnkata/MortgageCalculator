//
//  ViewController.swift
//  MortgageCalc
//
//  Created by Timothy Nkata on 5/7/20.
//  Copyright © 2020 Timothy Nkata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var PrincipalTextField: UITextField!
    
    
    @IBOutlet weak var NumOfPaymentsTextField: UITextField!
    
    
    @IBOutlet weak var InterestTextField: UITextField!
    
    
    @IBOutlet weak var EstimatedMonthlyPaymentLabel: UILabel!
    
    
    @IBOutlet weak var button: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button.layer.cornerRadius = 25.0
        
    }
    
    
    
    @IBAction func tappedOnCalculateButton(_ sender: Any) {
        
        let principalText = Double(PrincipalTextField.text!)
        
        let numOfPaymentText = Double(NumOfPaymentsTextField.text!)
        
        let interestText = Double(InterestTextField.text!)
        
        
        let interest = (interestText! / 100) / 12
        
        //print(interest) - Used to debug
        
        let numPayments = numOfPaymentText! * 12
        
        //print(numPayments) - Used to debug
        
        let onePlusR = 1 + interest
        
        let monthlyPay = (principalText!) * ((interest * pow(onePlusR, numPayments)) / ((pow(onePlusR, numPayments)) - 1))
        
        EstimatedMonthlyPaymentLabel.text = String(monthlyPay)
        
    }
    
    
    
    
    

}


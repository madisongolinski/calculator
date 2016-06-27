//
//  ViewController.swift
//  calculator
//
//  Created by Madison Golinski on 6/22/16.
//  Copyright © 2016 Madison Golinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Value1: UITextField!
    @IBOutlet weak var Value2: UITextField!
    @IBOutlet weak var ResultLabel: UILabel!
    
    @IBOutlet weak var multiply: UILabel!
    @IBOutlet weak var divide: UILabel!
    @IBOutlet weak var add: UILabel!
    @IBOutlet weak var subtract: UILabel!
    
    var equationState: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        equationState = "Subtraction"
        
        changeFunction(self)
    }
    
    @IBAction func changeFunction(sender: AnyObject) {
        if equationState == "Multiplication" {
            multiply.textColor = UIColor.blackColor()
            divide.textColor = UIColor.redColor()
            equationState = "Division"
        }
        else if equationState == "Division" {
            divide.textColor = UIColor.blackColor()
            add.textColor = UIColor.redColor()
            equationState = "Addition"
        }
        else if equationState == "Addition" {
            add.textColor = UIColor.blackColor()
            subtract.textColor = UIColor.redColor()
            equationState = "Subtraction"
        }
        else if equationState == "Subtraction" {
            subtract.textColor = UIColor.blackColor()
            multiply.textColor = UIColor.redColor()
            equationState = "Multiplication"
        }
    }
    
    @IBAction func calculate(sender: AnyObject) {
        var firstValue = Int(Value1.text!)!
        var secondValue = Int(Value2.text!)!
        
                if equationState == "Multiplication" {
                       let result = firstValue * secondValue
        
                    ResultLabel.text = "The answer is \(result)!"
                } else {
                    if equationState == "Division" {
                        let result = firstValue / secondValue
        
                    ResultLabel.text = "The answer is \(result)!"
                } else {
                    if equationState == "Addition" {
                        let result = firstValue + secondValue
        
                    ResultLabel.text = "The answer is \(result)!"
        
                } else {
                    if equationState == "Subtraction" {
                        let result = firstValue - secondValue
                        
                    ResultLabel.text = "The answer is \(result)!"
                            }
                        }
                    }
                }
        

    }
    
    
    
    
    
    @IBAction func clearFields(sender: AnyObject) {
        Value1.text = ""
        Value2.text = ""
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


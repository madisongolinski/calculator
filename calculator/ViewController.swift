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
   
    @IBAction func changeFunction(sender: AnyObject) {
      var equationState String = String()
        
    }
    
    
    @IBAction func calculate(sender: AnyObject) {
        var firstValue = Int(Value1.text!)!
        var secondValue = Int(Value2.text!)!
    
        if let multiply = Int(multiply.text!) {
                var result = Int(ResultLabel.text!)!
                result = firstValue * secondValue
            
            ResultLabel.text = "The answer is \(result)!"
        } else {
            if var divide = Int(divide.text!)! {
                var result = Int(ResultLabel.text!)!
                result = firstValue / secondValue
            
            ResultLabel.text = "The answer is \(result)!"
        } else {
            if var add = Int(add.text!)! {
                var result = Int(ResultLabel.text!)!
                result = firstValue + secondValue
                    
            ResultLabel.text = "The answer is \(result)!"
               
        } else {
            if var subtract = Int(subtract.text!)! {
                var result = Int(ResultLabel.text!)!
                result = firstValue - secondValue
                
            ResultLabel.text = "The answer is \(result)!"
                    }
                }
            }
        }
    
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
            equationState = "Multiply"
        
    
    
    
    
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


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
    
    var labels:[UILabel]=[]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labels.append(multiply)
        labels.append(divide)
        labels.append(add)
        labels.append(subtract)
        
        equationState = "-"
        
        
        changeFunction(self)
        
        
        let testView: UIView = UIView()
        testView.frame = CGRectMake((view.frame.width-300)/2, view.frame.height-100, 300, 60)
        testView.backgroundColor = UIColor.blackColor()
//        view.addSubview(testView)
        
        let redview: UIView = UIView()
        redview.frame = CGRectMake(0, 0, 60, 60)
        redview.backgroundColor = UIColor.redColor()
        testView.addSubview(redview)
    }
    
    @IBAction func changeFunction(sender: AnyObject) {
        
        switch equationState {
            case "*":
                equationState = "/"
            case "/":
                equationState = "+"
            case "+":
                equationState = "-"
            case "-":
                equationState = "*"
            default:
                print("")
        }
        
        for i in labels {
            if i.text == equationState {
                i.textColor = UIColor.redColor()
            }
            else {
                i.textColor = UIColor.blackColor()
            }
        }
        

    }
    
    @IBAction func calculate(sender: AnyObject) {
        var firstValue = Int(Value1.text!)!
        var secondValue = Int(Value2.text!)!
        
                if equationState == "*" {
                       let result = firstValue * secondValue
        
                    ResultLabel.text = "The answer is \(result)!"
                } else {
                    if equationState == "/" {
                        let result = firstValue / secondValue
        
                    ResultLabel.text = "The answer is \(result)!"
                } else {
                    if equationState == "+" {
                        let result = firstValue + secondValue
        
                    ResultLabel.text = "The answer is \(result)!"
        
                } else {
                    if equationState == "-" {
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


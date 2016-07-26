//
//  new.swift
//  calculator
//
//  Created by Madison Golinski on 6/29/16.
//  Copyright © 2016 Madison Golinski. All rights reserved.
//

import UIKit

class new: UIViewController {
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
    var sampleTextField: UITextField = UITextField()
    var sampleTextField2: UITextField = UITextField()
    var ResultLabel: UILabel = UILabel()
    
    var multiply: UILabel = UILabel()
    var divide: UILabel = UILabel()
    var add: UILabel = UILabel()
    var subtract: UILabel = UILabel()
    
    var equationState: String = String()
    
    var labels:[UILabel]=[]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColorFromHex(0xE4F1FE)
        
        labels.append(multiply)
        labels.append(divide)
        labels.append(add)
        labels.append(subtract)
        
        equationState = "-"
        
    
        
        let lbl1: UILabel = UILabel()
        lbl1.frame = CGRectMake(150, 50, 80, 20)
        lbl1.text = "Calculator"
        view.addSubview(lbl1)
    
        
        sampleTextField = UITextField(frame: CGRectMake(20, 150, 125, 25))
        sampleTextField.placeholder = "first number"
        sampleTextField.font = UIFont.systemFontOfSize(15)
        sampleTextField.borderStyle = UITextBorderStyle.RoundedRect
        sampleTextField.autocorrectionType = UITextAutocorrectionType.No
        sampleTextField.keyboardType = UIKeyboardType.NumberPad
        sampleTextField.returnKeyType = UIReturnKeyType.Done
        sampleTextField.clearButtonMode = UITextFieldViewMode.WhileEditing;
        sampleTextField.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        self.view.addSubview(sampleTextField)
            
    
        multiply.frame = CGRectMake(185, 75, 100, 100)
        multiply.text = "*"
        view.addSubview(multiply)
        
        divide.frame = CGRectMake(185, 100, 100, 100)
        divide.text = "/"
        view.addSubview(divide)
            
        add.frame = CGRectMake(185, 125, 100, 100)
        add.text = "+"
        view.addSubview(add)
        
        subtract.frame = CGRectMake(185, 150, 100, 100)
        subtract.text = "-"
        view.addSubview(subtract)
        
        
        sampleTextField2 = UITextField(frame: CGRectMake(self.view.frame.size.width-145, 150, 125, 25))
        sampleTextField2.placeholder = "second number"
        sampleTextField2.font = UIFont.systemFontOfSize(15)
        sampleTextField2.borderStyle = UITextBorderStyle.RoundedRect
        sampleTextField2.autocorrectionType = UITextAutocorrectionType.No
        sampleTextField2.keyboardType = UIKeyboardType.NumberPad
        sampleTextField2.returnKeyType = UIReturnKeyType.Done
        sampleTextField2.clearButtonMode = UITextFieldViewMode.WhileEditing;
        sampleTextField2.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Right
        self.view.addSubview(sampleTextField2)
        //this text field doesnt show up
        
        let button2 = UIButton(frame: CGRect(x: 115, y: 220, width: 150, height: 25))
        button2.backgroundColor = UIColorFromHex(0x89C4F4)
        button2.setTitle("Change Function", forState: .Normal)
        button2.addTarget(self, action: #selector(changeFunction), forControlEvents: .TouchUpInside)
        self.view.addSubview(button2)
        
        let button3 = UIButton(frame: CGRect(x: 145, y: 250, width: 100, height: 25))
        button3.backgroundColor = UIColorFromHex(0x89C4F4)
        button3.setTitle("Calculate", forState: .Normal)
        button3.addTarget(self, action: #selector(calculateAnswer), forControlEvents: .TouchUpInside)
        self.view.addSubview(button3)
        
        let lbl6: UILabel = UILabel()
        lbl6.frame = CGRectMake(185, 300, 50, 50)
        lbl6.text = "="
        view.addSubview(lbl6)
        //this label doesnt show up
        
        ResultLabel.frame = CGRectMake(125, 400, 175, 50)
        ResultLabel.text = ""
        view.addSubview(ResultLabel)
        
        let button1 = UIButton(frame: CGRect(x: 165, y: 550, width: 50, height: 25))
        button1.backgroundColor = UIColorFromHex(0x89C4F4)
        button1.setTitle("Clear", forState: .Normal)
        button1.addTarget(self, action: #selector(clear), forControlEvents: .TouchUpInside)
        self.view.addSubview(button1)
        
        
        let backButton = UIButton(frame: CGRect(x: 165, y: 600, width: 50, height: 25))
        backButton.backgroundColor = UIColorFromHex(0x89C4F4)
        backButton.setTitle("Close", forState: .Normal)
        backButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        backButton.addTarget(self, action: #selector(backView), forControlEvents: .TouchUpInside)
        view.addSubview(backButton)
    
    }
    
    func backView(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func calculateAnswer(){
        print("Button tapped, do something")
        let firstValue = Int(sampleTextField.text!)!
        let secondValue = Int(sampleTextField2.text!)!
        
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
    func changeFunction(){
        print("Button tapped, do something")
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


    func clear(){
        print("Button tapped, do something")
        sampleTextField.text = ""
        sampleTextField2.text = ""
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func buttonAction(sender: UIButton!) {
        print("Button tapped, do something")
    }
}
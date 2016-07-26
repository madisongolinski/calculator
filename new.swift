//
//  new.swift
//  calculator
//
//  Created by Madison Golinski on 6/29/16.
//  Copyright © 2016 Madison Golinski. All rights reserved.
//

import UIKit

class new: UIViewController {
    
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
        self.view.backgroundColor = UIColor.whiteColor()
        
        let lbl1: UILabel = UILabel()
        lbl1.frame = CGRectMake(150, 50, 80, 20)
        lbl1.text = "Calculator"
        view.addSubview(lbl1)
    
        
        let sampleTextField = UITextField(frame: CGRectMake(20, 150, 100, 25))
        sampleTextField.placeholder = "first number"
        sampleTextField.font = UIFont.systemFontOfSize(15)
        sampleTextField.borderStyle = UITextBorderStyle.RoundedRect
        sampleTextField.autocorrectionType = UITextAutocorrectionType.No
        sampleTextField.keyboardType = UIKeyboardType.NumberPad
        sampleTextField.returnKeyType = UIReturnKeyType.Done
        sampleTextField.clearButtonMode = UITextFieldViewMode.WhileEditing;
        sampleTextField.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        self.view.addSubview(sampleTextField)
            
        let lbl2: UILabel = UILabel()
        lbl2.frame = CGRectMake(175, 75, 100, 100)
        lbl2.text = "*"
        view.addSubview(lbl2)
        
        let lbl3: UILabel = UILabel()
        lbl3.frame = CGRectMake(175, 100, 100, 100)
        lbl3.text = "/"
        view.addSubview(lbl3)
            
        let lbl4: UILabel = UILabel()
        lbl4.frame = CGRectMake(175, 125, 100, 100)
        lbl4.text = "+"
        view.addSubview(lbl4)
            
        let lbl5: UILabel = UILabel()
        lbl5.frame = CGRectMake(175, 150, 100, 100)
        lbl5.text = "-"
        view.addSubview(lbl5)
        
        
        let sampleTextField2 = UITextField(frame: CGRectMake(500, 150, 100, 25))
        sampleTextField2.placeholder = "second"
        sampleTextField2.font = UIFont.systemFontOfSize(15)
        sampleTextField2.borderStyle = UITextBorderStyle.RoundedRect
        sampleTextField2.autocorrectionType = UITextAutocorrectionType.No
        sampleTextField2.keyboardType = UIKeyboardType.NumberPad
        sampleTextField2.returnKeyType = UIReturnKeyType.Done
        sampleTextField2.clearButtonMode = UITextFieldViewMode.WhileEditing;
        sampleTextField2.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Right
        self.view.addSubview(sampleTextField)
        //this text field doesnt show up
        
        let button2 = UIButton(frame: CGRect(x: 105, y: 220, width: 150, height: 25))
        button2.backgroundColor = .blueColor()
        button2.setTitle("Change Function", forState: .Normal)
        button2.addTarget(self, action: #selector(changeFunction), forControlEvents: .TouchUpInside)
        self.view.addSubview(button2)
        
        let button3 = UIButton(frame: CGRect(x: 125, y: 250, width: 100, height: 25))
        button3.backgroundColor = .blueColor()
        button3.setTitle("Calculate", forState: .Normal)
        button3.addTarget(self, action: #selector(calculateAnswer), forControlEvents: .TouchUpInside)
        self.view.addSubview(button3)
        
        let lbl6: UILabel = UILabel()
        lbl6.frame = CGRectMake(175, 300, 50, 50)
        lbl6.text = "="
        view.addSubview(lbl5)
        //this label doesnt show up
        
        let lbl7: UILabel = UILabel()
        lbl7.frame = CGRectMake(0, 500, 50, 50)
        lbl7.text = "result"
        view.addSubview(lbl5)
        
        let button1 = UIButton(frame: CGRect(x: 150, y: 550, width: 50, height: 25))
        button1.backgroundColor = .blueColor()
        button1.setTitle("Clear", forState: .Normal)
        button1.addTarget(self, action: #selector(clear), forControlEvents: .TouchUpInside)
        self.view.addSubview(button1)
        
        
        let closeButton = UIButton(frame: CGRect(x: 150, y: 600, width: 50, height: 25))
        closeButton.backgroundColor = UIColor.redColor()
        closeButton.setTitle("Close", forState: .Normal)
        closeButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        closeButton.addTarget(self, action: #selector(closeView), forControlEvents: .TouchUpInside)
        view.addSubview(closeButton)
    
    }
    
    func closeView(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func calculateAnswer(){
        print("Button tapped, do something")
        let firstValue = Int(Value1.text!)!
        let secondValue = Int(Value2.text!)!
        
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
    }
    
    func clear(){
        print("Button tapped, do something")
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func buttonAction(sender: UIButton!) {
        print("Button tapped, do something")
    }
}
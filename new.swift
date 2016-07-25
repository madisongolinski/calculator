//
//  new.swift
//  calculator
//
//  Created by Madison Golinski on 6/29/16.
//  Copyright © 2016 Madison Golinski. All rights reserved.
//

import UIKit

class new: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        UILabel; *lbl1 = [[UILabel alloc],init;]
        /*important--------- */lbl1.textColor = [UIColor blackColor];
        [lbl1 setFrame:position];
        lbl1.backgroundColor=[UIColor clearColor];
        lbl1.textColor=[UIColor whiteColor];
        lbl1.userInteractionEnabled=NO;
        lbl1.text= @"Calculator";
        [self.view addSubview:lbl1];
        
        let sampleTextField = UITextField(frame: CGRectMake(20, 100, 300, 40))
        sampleTextField.placeholder = ""
        sampleTextField.font = UIFont.systemFontOfSize(15)
        sampleTextField.borderStyle = UITextBorderStyle.RoundedRect
        sampleTextField.autocorrectionType = UITextAutocorrectionType.No
        sampleTextField.keyboardType = UIKeyboardType.NumberPad
        sampleTextField.returnKeyType = UIReturnKeyType.Done
        sampleTextField.clearButtonMode = UITextFieldViewMode.WhileEditing;
        sampleTextField.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        sampleTextField.delegate = self
        self.view.addSubview(sampleTextField)
        
        UILabel; *lbl2 = [[UILabel alloc],init;]
        /*important--------- */lbl1.textColor = [UIColor blackColor];
        [lbl2 setFrame:position];
        lbl2.backgroundColor=[UIColor clearColor];
        lbl2.textColor=[UIColor whiteColor];
        lbl2.userInteractionEnabled=NO;
        lbl2.text= @"*";
        lbl2.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Center
        [self.view addSubview:lbl1];
        
        let sampleTextField2 = UITextField(frame: CGRectMake(20, 100, 300, 40))
        sampleTextField2.placeholder = ""
        sampleTextField2.font = UIFont.systemFontOfSize(15)
        sampleTextField2.borderStyle = UITextBorderStyle.RoundedRect
        sampleTextField2.autocorrectionType = UITextAutocorrectionType.No
        sampleTextField2.keyboardType = UIKeyboardType.NumberPad
        sampleTextField2.returnKeyType = UIReturnKeyType.Done
        sampleTextField2.clearButtonMode = UITextFieldViewMode.WhileEditing;
        sampleTextField2.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Right
        sampleTextField2.delegate = self
        self.view.addSubview(sampleTextField)
        
        let button2 = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button2.backgroundColor = .greenColor()
        button2.setTitle("Change Function", forState: .Normal)
        button2.addTarget(self, action: Selector("Action:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button2)
        
        let button3 = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button3.backgroundColor = .greenColor()
        button3.setTitle("Calculate", forState: .Normal)
        button3.addTarget(self, action: Selector("Action:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button3)
        
        func textView() {
            let textView = UITextView(frame: CGRectMake(20.0, 30.0, 300.0, 30.0))
            textView.textAlignment = NSTextAlignment.Center
            textView.textColor = UIColor.blueColor()
            textView.backgroundColor = UIColor.redColor()
            self.view.addSubview(textView)
        }
        
        UILabel; *lbl3 = [[UILabel alloc],init;]
        /*important--------- */lbl1.textColor = [UIColor blackColor];
        [lbl3 setFrame:position];
        lbl3.backgroundColor=[UIColor clearColor];
        lbl3.textColor=[UIColor whiteColor];
        lbl3.userInteractionEnabled=NO;
        lbl3.text= @"=";
        lbl3.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Center
        [self.view addSubview:lbl1];
        
        let button1 = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button1.backgroundColor = .greenColor()
        button1.setTitle("Clear", forState: .Normal)
        button1.addTarget(self, action: Selector("Action:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button1)
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button.backgroundColor = .greenColor()
        button.setTitle("Next", forState: .Normal)
        button.addTarget(self, action: Selector("Action:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    
    }
    
    
    func buttonAction(sender: UIButton!) {
        print("Button tapped, do something")
    }
        
        // Do any additional setup after loading the view.
    

    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
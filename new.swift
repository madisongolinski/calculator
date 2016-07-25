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
        
<<<<<<< HEAD
        UILabel; *lbl1 = [[UILabel alloc],init;]
        /*important--------- */lbl1.textColor = [UIColor blackColor];
        [lbl1 setFrame:position];
        lbl1.backgroundColor=[UIColor clearColor];
        lbl1.textColor=[UIColor whiteColor];
        lbl1.userInteractionEnabled=NO;
        lbl1.text = @"Calculator";
        [self.view addSubview:lbl1];
=======
        var lbl1: UILabel = UILabel()
        lbl1.frame = CGRectMake(0, 0, 100, 100)
        lbl1.text = "Calculator"
        view.addSubview(lbl1)
        
//        UILabel; *lbl1 = [[UILabel alloc],init;]
//        /*important--------- */lbl1.textColor = [UIColor blackColor];
//        [lbl1 setFrame:position];
//        lbl1.backgroundColor=[UIColor clearColor];
//        lbl1.textColor=[UIColor whiteColor];
//        lbl1.userInteractionEnabled=NO;
//        lbl1.text= @"Calculator";
//        [self.view addSubview:lbl1];
>>>>>>> c6bfe030eaa755fbde30924095ae68533bfb1e6e
        
        let sampleTextField = UITextField(frame: CGRectMake(20, 100, 300, 40))
        sampleTextField.placeholder = ""
        sampleTextField.font = UIFont.systemFontOfSize(15)
        sampleTextField.borderStyle = UITextBorderStyle.RoundedRect
        sampleTextField.autocorrectionType = UITextAutocorrectionType.No
        sampleTextField.keyboardType = UIKeyboardType.NumberPad
        sampleTextField.returnKeyType = UIReturnKeyType.Done
        sampleTextField.clearButtonMode = UITextFieldViewMode.WhileEditing;
        sampleTextField.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        self.view.addSubview(sampleTextField)
        
<<<<<<< HEAD
        UILabel; *lbl2 = [[UILabel alloc],init;]
        /*important--------- */lbl1.textColor = [UIColor blackColor];
        [lbl2 setFrame:position];
        lbl2.backgroundColor=[UIColor clearColor];
        lbl2.textColor=[UIColor whiteColor];
        lbl2.userInteractionEnabled=NO;
        lbl2.text = @"*";
        lbl2.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Center
        [self.view addSubview:lbl1];
=======
//        UILabel; *lbl2 = [[UILabel alloc],init;]
//        /*important--------- */lbl1.textColor = [UIColor blackColor];
//        [lbl2 setFrame:position];
//        lbl2.backgroundColor=[UIColor clearColor];
//        lbl2.textColor=[UIColor whiteColor];
//        lbl2.userInteractionEnabled=NO;
//        lbl2.text= @"*";
//        lbl2.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Center
//        [self.view addSubview:lbl1];
>>>>>>> c6bfe030eaa755fbde30924095ae68533bfb1e6e
        
        let sampleTextField2 = UITextField(frame: CGRectMake(20, 100, 300, 40))
        sampleTextField2.placeholder = ""
        sampleTextField2.font = UIFont.systemFontOfSize(15)
        sampleTextField2.borderStyle = UITextBorderStyle.RoundedRect
        sampleTextField2.autocorrectionType = UITextAutocorrectionType.No
        sampleTextField2.keyboardType = UIKeyboardType.NumberPad
        sampleTextField2.returnKeyType = UIReturnKeyType.Done
        sampleTextField2.clearButtonMode = UITextFieldViewMode.WhileEditing;
        sampleTextField2.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Right
        self.view.addSubview(sampleTextField)
        
        let button2 = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button2.backgroundColor = .greenColor()
        button2.setTitle("Change Function", forState: .Normal)
        button2.addTarget(self, action: Selector("Action:"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button2)
        
        let button3 = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        button3.backgroundColor = .greenColor()
        button3.setTitle("Calculate", forState: .Normal)
        button3.addTarget(self, action: #selector(calculateAnswer), forControlEvents: .TouchUpInside)
        self.view.addSubview(button3)
        

        
//        UILabel; *lbl3 = [[UILabel alloc],init;]
//        /*important--------- */lbl1.textColor = [UIColor blackColor];
//        [lbl3 setFrame:position];
//        lbl3.backgroundColor=[UIColor clearColor];
//        lbl3.textColor=[UIColor whiteColor];
//        lbl3.userInteractionEnabled=NO;
//        lbl3.text = @ "equals";
//        lbl3.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Center
//        [self.view addSubview:lbl1];
        
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
        
        let closeButton = UIButton(frame: CGRectMake(self.view.frame.size.width-100, 20, 60, 40))
        closeButton.backgroundColor = UIColor.redColor()
        closeButton.setTitle("Close", forState: .Normal)
        closeButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        closeButton.addTarget(self, action: #selector(closeView), forControlEvents: .TouchUpInside)
        view.addSubview(closeButton)
    
    }
    
    func closeView(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func calculateAnswer() {
        print("Button tapped, do something")
    }
    
<<<<<<< HEAD

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
=======
>>>>>>> c6bfe030eaa755fbde30924095ae68533bfb1e6e
    
    func buttonAction(sender: UIButton!) {
        print("Button tapped, do something")
    }

}
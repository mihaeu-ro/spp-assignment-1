//
//  ViewController.swift
//  Assignment-1
//
//  Created by admin on 28/03/15.
//  Copyright (c) 2015 mihaeu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, Resetable {
    @IBOutlet weak var titleLabel: ResetOnTapLabel!
    @IBOutlet weak var labelReplacementText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        var tap = UITapGestureRecognizer()
        tap.addTarget(self, action: "reset:")
        view.addGestureRecognizer(tap)
        
        labelReplacementText.delegate = self
    }
    
    @IBAction func colorChange(sender: UIButton) {
        titleLabel.textColor = sender.titleLabel?.textColor
    }
    
    func reset(label: UILabel) {
        titleLabel.textColor = UIColor.blackColor()
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        titleLabel.text = textField.text
        textField.text = ""
        return true
    }
}


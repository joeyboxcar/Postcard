//
//  ViewController.swift
//  Postcard
//
//  Created by Joe Traverso on 12/27/14.
//  Copyright (c) 2014 Joe Traverso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Set up our IBOutlets

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameField: UITextField!
    @IBOutlet weak var enterMessageField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var introLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        introLabel.hidden = false
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageField.text
        
        nameLabel.hidden = false
        nameLabel.text = enterNameField.text
        
        enterMessageField.text = ""
        enterMessageField.resignFirstResponder()
        
        enterNameField.text = ""
        enterNameField.resignFirstResponder()
        
        mailButton.setTitle("Message Updated", forState: UIControlState.Normal)
    }

}


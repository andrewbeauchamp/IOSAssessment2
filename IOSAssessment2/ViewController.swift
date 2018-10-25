//
//  ViewController.swift
//  IOSAssessment2
//
//  Created by Andrew Beauchamp on 10/25/18.
//  Copyright © 2018 Andrew Beauchamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//Properties
    @IBOutlet weak var fistNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var eMailTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//Actions


    
    @IBAction func submitButtonTapped(_ sender: Any) {
        var newPerson = Person(firstName: fistNameTextField.text!, lastName: lastNameTextField.text!, eMail: eMailTextField.text!)
        let loginFilled = UIAlertController(title: "Greetings!", message: "Hello, \(fistNameTextField.text) \(lastNameTextField.text)! Your email address is \(eMailTextField.text).", preferredStyle: UIAlertController.Style.alert)
        let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default ) {UIAlertAction in}
        loginFilled.addAction(dismissAction)
        self.present(loginFilled, animated: true, completion: nil)
        return
      guard
        let enterFirst = fistNameTextField.text, !enterFirst.isEmpty,
        let enterLast = lastNameTextField.text, !enterLast.isEmpty,
        let enterEMail = eMailTextField.text, !enterEMail.isEmpty
        else {
            let alert = UIAlertController(title: "Error", message: "You have left some options empty please fill them before continuing", preferredStyle: UIAlertController.Style.alert)
            let dismissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default ) {UIAlertAction in}
            alert.addAction(dismissAction)
            self.present(alert, animated: true, completion: nil)
            return
        }
            return
        
    }
    
    }



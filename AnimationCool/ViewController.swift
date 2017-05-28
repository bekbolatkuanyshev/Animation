//
//  ViewController.swift
//  AnimationCool
//
//  Created by Бекболат Куанышев on 07.04.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        emailField.center.x -= self.view.frame.width - 30
        passwordField.center.x = self.view.frame.width + 30
        
        nextButton.layer.borderWidth = 1.0
        nextButton.layer.borderColor = UIColor.white.cgColor
        nextButton.layer.cornerRadius = 10.0
        nextButton.alpha = 0
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.5, animations: ({
            
            self.emailField.center.x = self.view.frame.width / 2
            self.passwordField.center.x = self.view.frame.width / 2
        }), completion: nil)
        UIView.animate(withDuration: 2.0, animations: ({
            self.nextButton.alpha = 1.0
        }), completion: nil)
    }

    @IBAction func nextPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.5, animations: ({
            
            self.emailField.center.x -= self.view.frame.width - 30
            self.passwordField.center.x = self.view.frame.width + 120
            self.nextButton.alpha = 1.0
        }), completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


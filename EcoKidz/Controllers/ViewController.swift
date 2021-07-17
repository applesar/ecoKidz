//
//  ViewController.swift
//  EcoKidz
//
//  Created by admin on 2021-07-16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    let defaultFont = UIFont(name: "Poppins-Medium", size: 16)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.signUpButton.layer.cornerRadius = self.signUpButton.frame.height/2
    
        self.signUpButton.titleLabel?.font = defaultFont
        self.logInButton.titleLabel?.font = defaultFont
    }


}


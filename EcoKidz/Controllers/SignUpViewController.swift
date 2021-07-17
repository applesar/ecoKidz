//
//  SignUpViewController.swift
//  EcoKidz
//
//  Created by admin on 2021-07-16.
//

import UIKit

class SignUpViewController: UIViewController {
    let defaultFont = UIFont(name: "Poppins-Medium", size: 16)

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.nameTextField.font = defaultFont
        self.emailTextField.font = defaultFont
        self.passwordTextField.font = defaultFont
        self.signUpButton.setTitle("Sign-up", for: .normal)
        
        self.logInButton.setTitle("Log In", for: .normal)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

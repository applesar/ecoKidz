//
//  SignUpViewController.swift
//  EcoKidz
//
//  Created by admin on 2021-07-16.
//

import UIKit

class  JuanChallengesViewController: UIViewController {
    let defaultFont = UIFont(name: "Poppins-Medium", size: 16)
    let eighteenFont = UIFont(name: "Poppins-Medium", size: 18)
    let titleFont = UIFont(name: "Poppins-Bold", size: 24)
    let myYellowColor = UIColor(red: 0.945, green: 0.8235, blue: 0.31765, alpha: 1)
    

    
    @IBOutlet weak var juanStoryLabel: UILabel!
    @IBOutlet weak var helpJuanButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.juanStoryLabel.font = eighteenFont
        self.juanStoryLabel.textColor = UIColor(ciColor: .white)
        self.helpJuanButton.titleLabel?.font = titleFont
        self.helpJuanButton.titleLabel?.textColor = myYellowColor
        
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

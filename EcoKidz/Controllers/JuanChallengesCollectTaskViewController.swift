//
//  SignUpViewController.swift
//  EcoKidz
//
//  Created by admin on 2021-07-16.
//

import UIKit

class  JuanChallengesCollectTaskViewController: UIViewController {
    
    let defaultFont = UIFont(name: "Poppins-Medium", size: 16)
    let bold18Font = UIFont(name: "Poppins-Bold", size: 18)
    let semiBold18Font = UIFont(name: "Poppins-SemiBold", size: 18)
    let myGreenColor = UIColor(red: 0.0, green: 0.3490, blue: 0.647, alpha: 1) // 59B0A5
    let myYellowColor = UIColor(red: 0.945, green: 0.8235, blue: 0.31765, alpha: 1)
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var instructionsLabel: UILabel!
    
    
       
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.funFactLabel.font = bold18Font
        self.funFactLabel.textColor = UIColor(ciColor: .white)
        
        self.instructionsLabel.font = semiBold18Font
        
        self.instructionsLabel.textColor = myGreenColor
      
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

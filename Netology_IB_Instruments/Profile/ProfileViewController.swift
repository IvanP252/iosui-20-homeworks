//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Mac on 14.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        if let myView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView {
            myView.frame = CGRect(x: 16, y: 100, width: screenWidth - 32, height: screenHeight - 200)
            self.view.addSubview(myView)
        }
        
    }
    

   

}

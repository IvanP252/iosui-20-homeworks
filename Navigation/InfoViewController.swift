//
//  InfoViewController.swift
//  Navigation
//
//  Created by Mac on 14.04.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    let pushButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pushButton.setTitle("Show alert", for: .normal)
        self.view.addSubview(pushButton)
        
        let screenWidth = UIScreen.main.bounds.width
        self.pushButton.frame = CGRect(x: 100, y: 150, width: screenWidth - 200, height: 50)
        self.pushButton.setTitleColor(.white, for: .normal)
        self.pushButton.backgroundColor = .orange
        
        self.pushButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        
        self.view.backgroundColor = .systemBlue
        
    }
    
    @objc func showAlert() {
        
        let alertController = UIAlertController(title: "Info delete",
                                                message: "Are you sure you want to delete?",
                                                preferredStyle: .alert)
        let actionOK = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: { _ in
            print("The information is permanently deleted")
        })
        let actionCancel = UIAlertAction(title: "Cancel",
                                         style: .cancel,
                                         handler: nil)
        
        alertController.addAction(actionOK)
        alertController.addAction(actionCancel)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
}

//
//  FeedViewController.swift
//  Navigation
//
//  Created by Mac on 14.04.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    let post = Post(title: "Everything will be great")
    
    let pushButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pushButton.setTitle("Go to Post", for: .normal)
        self.view.addSubview(pushButton)
        
        let screenWidth = UIScreen.main.bounds.width
        self.pushButton.frame = CGRect(x: 100, y: 150, width: screenWidth - 200, height: 50)
        self.pushButton.setTitleColor(.blue, for: .normal)
        self.pushButton.backgroundColor = .yellow
        
        self.pushButton.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        
        self.view.backgroundColor = .systemBackground
                
    }
   
    @objc
    func buttonTap() {
        let post = PostViewController()
        self.navigationController?.pushViewController(post, animated: true)
    }
}

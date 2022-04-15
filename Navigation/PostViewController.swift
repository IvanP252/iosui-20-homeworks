//
//  PostViewController.swift
//  Navigation
//
//  Created by Mac on 14.04.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    let postTitle = FeedViewController().post
    
    let pushButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pushButton.setTitle("Go to alert", for: .normal)
        self.view.addSubview(pushButton)
        
        let screenWidth = UIScreen.main.bounds.width
        self.pushButton.frame = CGRect(x: 100, y: 150, width: screenWidth - 200, height: 50)
        self.pushButton.setTitleColor(.white, for: .normal)
        self.pushButton.backgroundColor = .blue
        
        self.pushButton.addTarget(self, action: #selector(handlerButton), for: .touchUpInside)
        
        self.view.backgroundColor = .cyan
        
        title = postTitle.title

    }
    
    @objc
    func handlerButton() {
        let alertView = InfoViewController()
        self.present(alertView, animated: true)
        
    }
    
}

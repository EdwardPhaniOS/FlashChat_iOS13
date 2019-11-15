//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Tan Vinh Phan on 11/11/19.
//  Copyright © 2019 Edward Phan. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //create animation for titleLabel
        
        titleLabel.text = ""
        let text = K.appName

        var charIndex = 0.0

        for char in text {
            //set timer
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(char)
            }

            charIndex += 1
        }
        
       
    }
    

}

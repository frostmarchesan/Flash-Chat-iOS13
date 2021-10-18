//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        var charIndex = 0.0
        let title = K.appLabel
        Timer.scheduledTimer(withTimeInterval: 3, repeats: true) {
            (timerA) in
            self.titleLabel.text = ""
            charIndex = 0.0
            for letters in title {
                Timer.scheduledTimer(withTimeInterval: 0.2 * charIndex, repeats: false) { (timerB) in
                    self.titleLabel.text?.append(letters)
                }
                charIndex += 1
            }
        }
    }
}

//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        titleLabel.text = K.appName
//        let titleText = "⚡️FlashChat"
//        var characterIndex = 0.0
//
//        for letter in titleText {
//            print("-")
//            print(0.1 * characterIndex)
//            print(letter)
//            Timer.scheduledTimer(withTimeInterval: 0.1 * characterIndex, repeats: false) { (timer) in
//                self.titleLabel.text?.append(letter)
//            }
//            characterIndex += 1
//            print(characterIndex)
//         }
       
    }
    

}

//
//  HomeVC.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import UIKit
import Lottie

class HomeVC: UIViewController {
 
    let animationView = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
      startAnimation()
    }
    fileprivate func startAnimation(){
          let welcomesize = CGRect(x: 0, y: 0, width: view.frame.width, height: 200)
        let funSize = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height-100)
          self.startAnimation(name: "welcome",size: welcomesize,centered: true)
          self.startAnimation(name: "fun",size: funSize,centered: false)

        
    }


}

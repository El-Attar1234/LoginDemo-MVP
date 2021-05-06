//
//  UIViewController+Ext.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import UIKit
import Lottie

extension UIViewController{
    func startAnimation(name : String ,size :CGRect , centered :Bool){
        let animationView          = AnimationView()
        animationView.animation    = Animation.named(name)
        animationView.frame        = size
        if centered {
        animationView.center       = self.view.center
        }
        animationView.tintColor    = .green
        animationView.loopMode     = .loop
        animationView.contentMode  = .scaleAspectFit
        animationView.play()
        view.addSubview(animationView)
    }
}

    

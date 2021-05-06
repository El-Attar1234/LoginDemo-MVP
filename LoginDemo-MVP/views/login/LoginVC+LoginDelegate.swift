//
//  LoginVC+LoginDelegate.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import UIKit
import Lottie
extension LoginVC : LoginPresenterDelegate{
  
    
    func isUserCredentialsValid(valid: Bool) {
         if valid {
            emailTextField.isHidden = true
            passwordTextField.isHidden = true
            loginButton.isHidden = true
            let size = CGRect(x: 0, y: 0, width: 400, height: 200)
            self.startAnimation(name: "success",size: size,centered: true)
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.48) {
                let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeVC") as! HomeVC
                 self.present(homeVC, animated: true)
            }
           
                 }
                 else{
             loginButton.isEnabled = false
            let alertController = UIAlertController(title: "Failed", message: "this email isn't registered", preferredStyle: .alert)
                      let okAtion = UIAlertAction(title: "OK", style: .default)
                      alertController.addAction(okAtion)
                      self.present(alertController , animated: true ,completion: nil)
                 }
    }
    
    func showIndicator() {
         //popup loading indicator in case of time consuming task
    }
    
    func hideIndicator() {
        
    }
  
    func showError(error: String) {
        
    }
    func isValidInpuuts(valid: Bool) {
          if valid {
              loginButton.isEnabled = true
              loginButton.backgroundColor = UIColor.colorWithRGB(red: 17, green: 154, blue: 237)
          }
          else{
              loginButton.isEnabled = false
              loginButton.backgroundColor = UIColor.colorWithRGB(red: 149, green: 204, blue: 255)
          }
      }
    
}

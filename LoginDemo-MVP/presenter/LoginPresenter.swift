//
//  LoginPresenter.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation

protocol LoginPresenterProtocol {
    func validateUser(email : String , password :String)
      func validateContentInTextField(email : String , password :String)
}

class LoginPresenter : LoginPresenterProtocol {
    
    weak var view  : LoginPresenterDelegate!
    private var loginRepo  : LoginRepoProtocol!
    
    init(view : LoginPresenterDelegate) {
        self.view = view
        loginRepo = LoginRepo(presenter: self)
    }
    
    func validateUser(email : String , password :String){
        view.showIndicator()
        loginRepo.validateUser(email: email, password: password)
    }
    
    func validateContentInTextField(email: String, password: String) {
          let isValid = email.isValidEmail && password.isValidPassword
                 if isValid {
                    view.isValidInpuuts(valid: true)
                 }
                 else{
                  view.isValidInpuuts(valid: false)
                 }
      }
    
    
}

//
//  LoginVC.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    var presenter : LoginPresenterProtocol!
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = LoginPresenter(view : self)
        configure()
        setUpAnimation()
        registerAction()
        
    }
    
    fileprivate func configure(){
        emailTextField.makeRounded()
        passwordTextField.makeRounded()
        loginButton.makeRounded() 
        loginButton.isEnabled       = false
        loginButton.backgroundColor = UIColor.colorWithRGB(red: 149, green: 204, blue: 255)
        
    }
    fileprivate func  setUpAnimation(){
        let size = CGRect(x: 10, y: 50, width: 400, height: 200)
        self.startAnimation(name: "login",size: size,centered: false)
    }
    fileprivate func  registerAction(){
        loginButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        emailTextField.addTarget(self, action: #selector(checkIfInputsValidation), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(checkIfInputsValidation), for: .editingChanged)
    }
    
    

@objc private func checkIfInputsValidation(){
    guard let email = emailTextField.text else {return}
    guard let password = passwordTextField.text else {return}
    self.presenter.validateContentInTextField(email: email, password: password)
}


@objc func loginAction(){
    presenter.validateUser(email :emailTextField.text! , password :passwordTextField.text!)
    self.emailTextField.text    = ""
    self.passwordTextField.text = ""
}
}

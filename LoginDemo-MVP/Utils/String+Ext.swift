//
//  String+Ext.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation
extension String {

var isValidEmail: Bool {
    let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
    return emailPredicate.evaluate(with: self)
}


var isValidPassword: Bool {
    //Regex ehic restricts password to 6 character minimum, 1 capital letter, 1 lowercase letter, 1 number
    let passwordFormat      = "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{6,}"
    let passwordPredicate   = NSPredicate(format: "SELF MATCHES %@", passwordFormat)
    return passwordPredicate.evaluate(with: self)
    }
    
}

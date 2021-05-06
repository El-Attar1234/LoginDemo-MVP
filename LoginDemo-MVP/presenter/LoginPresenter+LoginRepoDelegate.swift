//
//  LoginPresenter+LoginRepoDelegate.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation
extension LoginPresenter : LoginRepoDelegate{
    func isUserCredentialsValid(valid: Bool) {
        view.hideIndicator()
        view.isUserCredentialsValid(valid: valid)
    }
}

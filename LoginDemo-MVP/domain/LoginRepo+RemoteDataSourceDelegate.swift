//
//  LoginRepo+RemoteDataSourceDelegate.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation

extension LoginRepo  : RemoteDataSourceDelegate{
    func isUserCredentialsValid(valid: Bool) {
        presenter.isUserCredentialsValid(valid: valid)
    }
    
    
}

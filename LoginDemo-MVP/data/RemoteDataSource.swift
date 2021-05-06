//
//  RemoteDataSource.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation

protocol RemoteDataSourceProtocol {
    func validateUser(email : String , password :String)
}


class RemoteDataSource : RemoteDataSourceProtocol {
    let storedEmail = "mah1@gmail.com"
    let storedPassword = "Mah123"
    
    private weak var repo : RemoteDataSourceDelegate!
    init(repo : RemoteDataSourceDelegate) {
        self.repo = repo
    }
    
    
    func validateUser(email: String, password: String) {
        if email == storedEmail && password == storedPassword {
            repo.isUserCredentialsValid(valid: true)
        }else{
           repo.isUserCredentialsValid(valid: false)
        }
        
    }
    
    
}

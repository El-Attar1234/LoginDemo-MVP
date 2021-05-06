//
//  LoginRepo.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation
protocol LoginRepoProtocol  {
     func validateUser(email : String , password :String)
}


class LoginRepo :LoginRepoProtocol{
    
     weak var presenter : LoginRepoDelegate!
    private var remoteDataSource : RemoteDataSourceProtocol!
    
    init(presenter : LoginRepoDelegate) {
        self.presenter = presenter
        remoteDataSource = RemoteDataSource(repo: self)
    }
    
    func validateUser(email: String, password: String) {
        remoteDataSource.validateUser(email: email, password: password)
    }
    
    
}

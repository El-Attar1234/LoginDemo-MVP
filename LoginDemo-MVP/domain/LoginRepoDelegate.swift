//
//  LoginRepoDelegate.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation

protocol LoginRepoDelegate : class {
   func isUserCredentialsValid(valid : Bool)
}

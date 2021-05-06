//
//  LoginPresenterDelegate.swift
//  LoginDemo-MVP
//
//  Created by Mahmoud Elattar on 5/5/21.
//  Copyright © 2021 ITI. All rights reserved.
//

import Foundation
protocol LoginPresenterDelegate : class {
    func showIndicator()
    func hideIndicator()
     func isValidInpuuts(valid: Bool) 
  func isUserCredentialsValid(valid: Bool) 
   // func navigateToMovieDetailsScreen(movie: Movie)
}

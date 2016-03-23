//
//  RegisterViewModel.swift
//  Authentication
//
//  Created by Daniela Riesgo on 3/18/16.
//  Copyright © 2016 Wolox. All rights reserved.
//

import Foundation
import ReactiveCocoa


protocol RegisterViewModelType {
    
    var name: MutableProperty<String> { get }
    var nameValidationErrors: AnyProperty<[String]> { get }
    
    var email: MutableProperty<String> { get }
    var emailValidationErrors: AnyProperty<[String]> { get }
    
    var password: MutableProperty<String> { get }
    var passwordValidationErrors: AnyProperty<[String]> { get }
    
    var passwordConfirmation: MutableProperty<String> { get }
    var passwordConfirmationValidationErrors: AnyProperty<[String]> { get }
    
    var nameText: String { get }
    var emailText: String { get }
    var passwordText: String { get }
    var confirmPasswordText: String { get }
    var namePlaceholderText: String { get }
    var emailPlaceholderText: String { get }
    var passwordPlaceholderText: String { get }
    var confirmPasswordPlaceholderText: String { get }
    var signupButtonTitle: String { get }
    
}

public final class RegisterViewModel {
    
    
    
}

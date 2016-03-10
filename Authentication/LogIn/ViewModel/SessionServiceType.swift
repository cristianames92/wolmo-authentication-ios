//
//  SessionServiceType.swift
//  Authentication
//
//  Created by Daniela Riesgo on 3/7/16.
//  Copyright © 2016 Wolox. All rights reserved.
//

import Foundation
import ReactiveCocoa
import enum Result.NoError


public enum SessionServiceEvent<User: UserType> {
    case LogIn(User)
    case LogOut(User)
    case LogInError(SessionServiceError)
}

public enum SessionServiceError: ErrorType {
    case InexistentUser
    case WrongPassword
    case NetworkError(NSError)
}

public protocol SessionServiceType {
    
    typealias User: UserType
    
    var currentUser: AnyProperty<User?> { get }
    
    var events: Signal<SessionServiceEvent<User>, NoError> { get }
    
    func login(email: Email, _ password: String) -> SignalProducer<User, SessionServiceError>
    
}


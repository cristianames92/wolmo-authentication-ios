//
//  RecoverPasswordConfiguration.swift
//  Authentication
//
//  Created by Argentino Ducret on 11/06/2018.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import UIKit

/**
 Represents the login recover password configuration.
*/

public protocol RecoverPasswordConfigurationType {

    var contentHorizontalAlignment: UIControlContentHorizontalAlignment { get }
    var isHidden: Bool { get }
    var font: UIFont { get }
    var textColor: UIColor { get } 
    var onTap: (UINavigationController?) -> Void { get }

}

public extension RecoverPasswordConfigurationType {

    var contentHorizontalAlignment: UIControlContentHorizontalAlignment { return .center }
    var isHidden: Bool { return true }
    var font: UIFont { return UIFont.systemFont(ofSize: 14, weight: .medium) }
    var textColor: UIColor { return .black }
    var onTap: (UINavigationController?) -> Void { return { _ in () } }

}

public struct DefaultRecoverPasswordConfiguration: RecoverPasswordConfigurationType {

    public init() { }

}

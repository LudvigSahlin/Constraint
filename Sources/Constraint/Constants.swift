//
//  Constants.swift
//  
//
//  Created by Ludvig Hemma on 2021-07-20.
//

import Foundation
import UIKit

class Constants {
    /// For views in a stackview, all additional constraints must not have priority 1000 in order to not conflict with those added by the UIStackView.
    static let defaultPriority = UILayoutPriority(999)
}

//
//  Extensions.swift
//  
//
//  Created by Ludvig Hemma on 2021-07-20.
//

import Foundation
import UIKit


public extension UIView {
    private func prepareAndPrioritizeAndActivate(_ constraint: NSLayoutConstraint) {
        translatesAutoresizingMaskIntoConstraints = false
        constraint.priority = Constants.defaultPriority
        constraint.isActive = true
    }

    func constrainHeightTo(_ value: CGFloat) { prepareAndPrioritizeAndActivate(heightAnchor.constraint(equalToConstant: value)) }

    func constrainWidthTo(_ value: CGFloat) { prepareAndPrioritizeAndActivate(widthAnchor.constraint(equalToConstant: value)) }

    func constrainTo(_ view: UIView, _ constraints: [Constraint]) {
        for constraint in constraints {
            prepareAndPrioritizeAndActivate(constraint.getConstraint(from: self, to: view))
        }
    }

    func constrainTo(_ view: UILayoutGuide, _ constraints: [Constraint]) {
        for constraint in constraints {
            prepareAndPrioritizeAndActivate(constraint.getConstraint(from: self, to: view))
        }
    }
}

public extension Array where Element == Constraint {
    static let allBorders: [Constraint] = [.top, .bottom, .leading, .trailing]
    /// Bottom and trailing values are signed so that all borders will either be made smaller (if value > 0) or bigger (if value < 0)
    static func allBorders(_ value: CGFloat) -> [Constraint] { return [.top(value), .bottom(-value), .leading(value), .trailing(-value)] }
}

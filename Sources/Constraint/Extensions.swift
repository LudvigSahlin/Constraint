// Copyright 2021 Ludvig Sahlin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

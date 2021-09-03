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

public struct Constraint {
    enum ConstraintType { case top, bottom, leading, trailing, centerX, centerY, height, width, above, under, before, after }

    let type: ConstraintType
    let value: CGFloat

    public static let top = Constraint(type: .top, value: 0)
    public static let bottom = Constraint(type: .bottom, value: 0)
    public static let leading = Constraint(type: .leading, value: 0)
    public static let trailing = Constraint(type: .trailing, value: 0)
    public static let centerX = Constraint(type: .centerX, value: 0)
    public static let centerY = Constraint(type: .centerY, value: 0)
    public static let height = Constraint(type: .height, value: 0)
    public static let width = Constraint(type: .width, value: 0)
    public static let above = Constraint(type: .above, value: 0)
    public static let under = Constraint(type: .under, value: 0)
    public static let before = Constraint(type: .before, value: 0)
    public static let after = Constraint(type: .after, value: 0)
    public static func top(_ value: CGFloat) -> Constraint { return Constraint(type: .top, value: value) }
    public static func bottom(_ value: CGFloat) -> Constraint { return Constraint(type: .bottom, value: value) }
    public static func leading(_ value: CGFloat) -> Constraint { return Constraint(type: .leading, value: value) }
    public static func trailing(_ value: CGFloat) -> Constraint { return Constraint(type: .trailing, value: value) }
    public static func centerX(_ value: CGFloat) -> Constraint { return Constraint(type: .centerX, value: value) }
    public static func centerY(_ value: CGFloat) -> Constraint { return Constraint(type: .centerY, value: value) }
    public static func height(_ value: CGFloat) -> Constraint { return Constraint(type: .height, value: value) }
    public static func width(_ value: CGFloat) -> Constraint { return Constraint(type: .width, value: value) }
    public static func above(_ value: CGFloat) -> Constraint { return Constraint(type: .above, value: value) }
    public static func under(_ value: CGFloat) -> Constraint { return Constraint(type: .under, value: value) }
    public static func before(_ value: CGFloat) -> Constraint { return Constraint(type: .before, value: value) }
    public static func after(_ value: CGFloat) -> Constraint { return Constraint(type: .after, value: value) }

    func getConstraint(from view: UIView, to view2: UIView) -> NSLayoutConstraint {
        switch type {
        case .top: return view.topAnchor.constraint(equalTo: view2.topAnchor, constant: value)
        case .bottom: return view.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: value)
        case .leading: return view.leadingAnchor.constraint(equalTo: view2.leadingAnchor, constant: value)
        case .trailing: return view.trailingAnchor.constraint(equalTo: view2.trailingAnchor, constant: value)
        case .centerX: return view.centerXAnchor.constraint(equalTo: view2.centerXAnchor, constant: value)
        case .centerY: return view.centerYAnchor.constraint(equalTo: view2.centerYAnchor, constant: value)
        case .height: return view.heightAnchor.constraint(equalTo: view2.heightAnchor, constant: value)
        case .width: return view.widthAnchor.constraint(equalTo: view2.widthAnchor, constant: value)
        case .above: return view.bottomAnchor.constraint(equalTo: view2.topAnchor, constant: value)
        case .under: return view.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: value)
        case .before: return view.rightAnchor.constraint(equalTo: view2.leftAnchor, constant: value)
        case .after: return view.leftAnchor.constraint(equalTo: view2.rightAnchor, constant: value)
        }
    }

    func getConstraint(from view: UIView, to view2: UILayoutGuide) -> NSLayoutConstraint {
        switch type {
        case .top: return view.topAnchor.constraint(equalTo: view2.topAnchor, constant: value)
        case .bottom: return view.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: value)
        case .leading: return view.leadingAnchor.constraint(equalTo: view2.leadingAnchor, constant: value)
        case .trailing: return view.trailingAnchor.constraint(equalTo: view2.trailingAnchor, constant: value)
        case .centerX: return view.centerXAnchor.constraint(equalTo: view2.centerXAnchor, constant: value)
        case .centerY: return view.centerYAnchor.constraint(equalTo: view2.centerYAnchor, constant: value)
        case .height: return view.heightAnchor.constraint(equalTo: view2.heightAnchor, constant: value)
        case .width: return view.widthAnchor.constraint(equalTo: view2.widthAnchor, constant: value)
        case .above: return view.bottomAnchor.constraint(equalTo: view2.topAnchor, constant: value)
        case .under: return view.topAnchor.constraint(equalTo: view2.bottomAnchor, constant: value)
        case .before: return view.rightAnchor.constraint(equalTo: view2.leftAnchor, constant: value)
        case .after: return view.leftAnchor.constraint(equalTo: view2.rightAnchor, constant: value)
        }
    }

}

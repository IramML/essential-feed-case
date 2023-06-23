//
//  UIControl+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Iram Martinez on 22/06/23.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}

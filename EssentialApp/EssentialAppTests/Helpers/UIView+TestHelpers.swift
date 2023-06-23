//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Iram Martinez on 22/06/23.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}

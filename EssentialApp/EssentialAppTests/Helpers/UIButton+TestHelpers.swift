//
//  UIButton+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Iram Martinez on 22/06/23.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}

//
//  UIRefreshControl+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Iram Martinez on 22/06/23.
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}

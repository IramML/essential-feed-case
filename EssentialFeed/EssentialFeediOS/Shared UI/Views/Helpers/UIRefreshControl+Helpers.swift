//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Iram Martinez on 22/06/23.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}

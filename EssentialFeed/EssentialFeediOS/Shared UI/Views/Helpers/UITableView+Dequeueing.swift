//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Iram Martinez on 21/06/23.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}

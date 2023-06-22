//
//  ImageCommentCellController.swift
//  EssentialFeediOS
//
//  Created by Iram Martinez on 21/06/23.
//

import EssentialFeed
import UIKit

public class ImageCommentCellController: NSObject {
    private let viewModel: ImageCommentViewModel

    public init(viewModel: ImageCommentViewModel) {
        self.viewModel = viewModel
    }
}

extension ImageCommentCellController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ImageCommentCell = tableView.dequeueReusableCell()
        cell.messageLabel.text = viewModel.message
        cell.usernameLabel.text = viewModel.username
        cell.dateLabel.text = viewModel.date
        return cell
    }
}

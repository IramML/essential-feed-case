//
//  CommentsViewAdapter.swift
//  EssentialApp
//
//  Created by Iram Martinez on 22/06/23.
//

import Foundation
import EssentialFeed
import EssentialFeediOS

final class CommentsViewAdapter: ResourceView {
    private weak var controller: ListViewController?

    init(controller: ListViewController) {
        self.controller = controller
    }

    func display(_ viewModel: ImageCommentsViewModel) {
        controller?.display(viewModel.comments.map { viewModel in
            CellController(id: viewModel, ImageCommentCellController(viewModel: viewModel))
        })
    }
}

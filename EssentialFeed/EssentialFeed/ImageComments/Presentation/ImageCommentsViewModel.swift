//
//  ImageCommentsViewModel.swift
//  EssentialFeed
//
//  Created by Iram Martinez on 21/06/23.
//

public struct ImageCommentsViewModel {
    public let comments: [ImageCommentViewModel]
}

public struct ImageCommentViewModel: Hashable {
    public let message: String
    public let date: String
    public let username: String

    public init(message: String, date: String, username: String) {
        self.message = message
        self.date = date
        self.username = username
    }
}

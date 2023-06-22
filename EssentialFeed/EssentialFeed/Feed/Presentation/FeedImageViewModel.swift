//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Iram Martinez on 21/06/23.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        return location != nil
    }
}

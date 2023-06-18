//
//  LocalFeedLoader.swift
//  EssentialFeed
//
//  Created by Iram Martinez on 17/06/23.
//

import Foundation

public final class LocalFeedLoader {
    private let store: FeedStore
    private let currentDate: () -> Date

    public init(store: FeedStore, currentDate: @escaping () -> Date) {
        self.store = store
        self.currentDate = currentDate
    }
}

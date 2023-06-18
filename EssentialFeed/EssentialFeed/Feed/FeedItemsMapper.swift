//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Iram Martinez on 17/06/23.
//

import Foundation

public final class FeedItemsMapper {
    private struct Root: Decodable {
        private let items: [RemoteFeedItem]

        private struct RemoteFeedItem: Decodable {
            let id: UUID
            let description: String?
            let location: String?
            let image: URL
        }

        var images: [FeedImage] {
            items.map { FeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.image) }
        }
    }
    
    public enum Error: Swift.Error {
        case invalidData
    }

    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> [FeedImage] {
        guard response.statusCode == 200, ((try? JSONDecoder().decode(Root.self, from: data)) != nil) else {
            throw Error.invalidData
        }
        return []
    }
}

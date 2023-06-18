//
//  ImageCommentsMapper.swift
//  EssentialFeed
//
//  Created by Iram Martinez on 17/06/23.
//

import Foundation

public final class ImageCommentsMapper {
    private struct Root: Decodable {
        private let items: [Item]

        private struct Item: Decodable {
            let id: UUID
            let message: String
            let created_at: Date
            let author: Author
        }

        private struct Author: Decodable {
            let username: String
        }

        var comments: [ImageComment] {
            items.map { ImageComment(id: $0.id, message: $0.message, createdAt: $0.created_at, username: $0.author.username) }
        }
    }
    
    public enum Error: Swift.Error {
        case invalidData
    }

    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> [ImageComment] {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        guard (200 ... 299).contains(response.statusCode), (try? decoder.decode(Root.self, from: data)) != nil else {
            throw Error.invalidData
        }

        return []
    }
}

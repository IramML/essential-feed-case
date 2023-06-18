//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Iram Martinez on 17/06/23.
//

import Foundation

public final class FeedItemsMapper {
    
    public enum Error: Swift.Error {
        case invalidData
    }

    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> [FeedImage] {
        guard response.statusCode == 200 else {
            throw Error.invalidData
        }
        return []
    }
}

//
//  ImageCommentsMapper.swift
//  EssentialFeed
//
//  Created by Iram Martinez on 17/06/23.
//

import Foundation

public final class ImageCommentsMapper {

    public enum Error: Swift.Error {
        case invalidData
    }

    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> [ImageComment] {
        guard (200 ... 299).contains(response.statusCode) else {
            throw Error.invalidData
        }

        return []
    }
}

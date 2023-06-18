//
//  ImageCommentsMapperTests.swift
//  EssentialFeedTests
//
//  Created by Iram Martinez on 17/06/23.
//

import XCTest
import EssentialFeed

final class ImageCommentsMapperTests: XCTestCase {
    func test_map_throwsErrorOnNon2xxHTTPResponse() throws {
        let json = makeItemsJSON([])
        let samples = [199, 150, 300, 400, 500]

        try samples.forEach { code in
            XCTAssertThrowsError(
                try ImageCommentsMapper.map(json, from: HTTPURLResponse(statusCode: code)),
                "code is \(code)"
            )
        }
    }

}

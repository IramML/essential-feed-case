//
//  FeedImageDataMapperTests.swift
//  EssentialFeedTests
//
//  Created by Iram Martinez on 17/06/23.
//

import XCTest
import EssentialFeed

final class FeedImageDataMapperTests: XCTestCase {
    func test_map_throwsErrorOnNon200HTTPResponse() throws {
        let samples = [199, 201, 300, 400, 500]

        try samples.forEach { code in
            XCTAssertThrowsError(
                try FeedImageDataMapper.map(anyData(), from: HTTPURLResponse(statusCode: code)),
                "code is \(code)"
            )
        }
    }
}

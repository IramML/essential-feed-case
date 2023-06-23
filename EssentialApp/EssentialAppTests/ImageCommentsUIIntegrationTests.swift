//
//  ImageCommentsUIIntegrationTests.swift
//  EssentialAppTests
//
//  Created by Iram Martinez on 22/06/23.
//

import XCTest
import UIKit
import Combine
import EssentialApp
import EssentialFeed
import EssentialFeediOS

final class ImageCommentsUIIntegrationTests: XCTestCase {
    func test_commentsView_hasTitle() {
        let (sut, _) = makeSUT()
        
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.title, commentsTitle)
    }
    
    // MARK: - Helpers
    
    private func makeSUT(
        selection: @escaping (FeedImage) -> Void = { _ in },
        file: StaticString = #filePath,
        line: UInt = #line
    ) -> (sut: ListViewController, loader: LoaderSpy) {
        let loader = LoaderSpy()
        let sut = CommentsUIComposer.commentsComposedWith(
            commentsLoader: loader.loadPublisher
        )
        trackForMemoryLeaks(loader, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, loader)
    }
}

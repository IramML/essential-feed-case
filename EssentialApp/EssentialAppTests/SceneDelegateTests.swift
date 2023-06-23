//
//  SceneDelegateTests.swift
//  EssentialAppTests
//
//  Created by Iram Martinez on 22/06/23.
//

import XCTest
import EssentialFeediOS
@testable import EssentialApp

class SceneDelegateTests: XCTestCase {
    func test_configureWindow_setsWindowAsKeyAndVisible() {
        let window = UIWindowSpy()
        let sut = SceneDelegate()
        sut.window = window

        sut.configureWindow()

        XCTAssertEqual(window.makeKeyAndVisibleCallCount, 1, "Expected to make window key and visible")
    }

    private class UIWindowSpy: UIWindow {
        var makeKeyAndVisibleCallCount = 0

        override func makeKeyAndVisible() {
            makeKeyAndVisibleCallCount = 1
        }
    }
}

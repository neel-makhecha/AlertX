import XCTest
@testable import AlertX

final class AlertXTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(AlertX().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

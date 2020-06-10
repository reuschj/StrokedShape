import XCTest
@testable import StrokedShape

final class StrokedShapeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(StrokedShape().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

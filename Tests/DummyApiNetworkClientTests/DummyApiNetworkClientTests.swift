import XCTest
@testable import DummyApiNetworkClient

final class DummyApiNetworkClientTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DummyApiNetworkClient().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

@testable import SwiftSys
import XCTest

final class SwiftSysTests: XCTestCase {
    func test() throws {
        XCTAssertEqual("id".id, "id")
    }
}

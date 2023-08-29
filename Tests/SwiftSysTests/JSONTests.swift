@testable import SwiftSys
import XCTest
import Foundation

final class JSONTests: XCTestCase {

    func testJSON() throws {
        XCTAssertThrowsError(try Sys.jsonPath("jsonfile"))
    }
}

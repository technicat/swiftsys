@testable import SwiftSys
import XCTest
import Foundation
import MapKit

final class JSONTests: XCTestCase {

    func testJSON() throws {
        XCTAssertThrowsError(try Sys.jsonPath("jsonfile"))
    }
}

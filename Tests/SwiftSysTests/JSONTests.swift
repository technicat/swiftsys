import Foundation
import XCTest

@testable import SwiftSys

final class JSONTests: XCTestCase {

  func testJSON() throws {
    XCTAssertThrowsError(try Sys.jsonPath("jsonfile"))
  }
}

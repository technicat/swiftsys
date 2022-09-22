@testable import SwiftSys
import XCTest

final class SwiftSysTests: XCTestCase {
    func testString() throws {
        XCTAssertEqual("id".id, "id")
    }
    func testLink() throws {
        let name = "Technicat"
        let url = "http://technicat.com/"
        let link = Link(name: name, url: url)
        XCTAssertEqual(link.name, name)
        XCTAssertEqual(link.url, url)
        XCTAssertEqual(link.id, url)
    }
}

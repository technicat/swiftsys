@testable import SwiftSys
import XCTest

final class TextTests: XCTestCase {

    func testStringTrim() throws {
        XCTAssertEqual("trim", " trim  ".trimWS)
        XCTAssertEqual("trim", " trim  \n".trimWSNL)
        XCTAssertFalse("trim".isWSNL)
        XCTAssert("".isWSNL)
        XCTAssert("   ".isWSNL)
        XCTAssert(" \n\n  ".isWSNL)
    }

    @available(macOS 13, *)
    @available(iOS 16, *)
    func testTag() throws {
        XCTAssertEqual("#tag".bfTag, "**#tag**")
    }

    @available(macOS 13, *)
    @available(iOS 16, *)
    func testMention() throws {
        XCTAssertEqual("@mention".bfMention, "**@mention**")
    }
}

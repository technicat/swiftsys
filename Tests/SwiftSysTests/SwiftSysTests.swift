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
    func testTTS() throws {
        XCTAssertFalse(TTS.isSpeaking)
        XCTAssertNoThrow(try TTS.say("我想要中國茶", language: Chinese.cantonese, rate: 0.3))
    }
}

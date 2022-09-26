@testable import SwiftSys
import XCTest

final class SwiftSysTests: XCTestCase {
    func testString() throws {
        XCTAssertEqual("id".id, "id")
        XCTAssertNoThrow(try "".urlEncode())
    }
    func testLink() throws {
        let name = "Technicat"
        let url = "http://technicat.com/"
        let link = Link(name: name, url: url)
        XCTAssertEqual(link.name, name)
        XCTAssertEqual(link.url, url)
        XCTAssertEqual(link.id, url)
    }
    func testLanguage() throws {
        XCTAssertEqual(Chinese.cantonese.rawValue, "cantonese")
        XCTAssertEqual(Chinese.mandarin.rawValue, "mandarin")
        XCTAssertEqual(Chinese.simplified.rawValue, "simplified")
        XCTAssertNoThrow(try Chinese.language(0))
        XCTAssertNoThrow(try Chinese.language(1))
        XCTAssertNoThrow(try Chinese.language(2))
        XCTAssertThrowsError(try Chinese.language(3))
        XCTAssertThrowsError(try Chinese.language(-1))
    }
    func testWord() throws {
    }
    func testTTS() throws {
        XCTAssertFalse(TTS.isSpeaking)
        XCTAssertNoThrow(try TTS.say("我想要中國茶", language: Chinese.cantonese, rate: 0.3))
    }
}

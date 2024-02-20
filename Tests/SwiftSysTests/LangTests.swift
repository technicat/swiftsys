import XCTest

@testable import SwiftSys

final class LangTests: XCTestCase {

  func testStringLanguage() throws {
    XCTAssertEqual("en".languageName, "English")
  }

  func testISO639a2() throws {
    XCTAssertEqual(ISO639a2.en.rawValue, "en")
    XCTAssertEqual(ISO639a2.en.display, "English")
  }

  @available(iOS 16, *)
  @available(macOS 13, *)
  func testLang() throws {
    XCTAssertEqual(Sys.currentLangID, "en")
    XCTAssertEqual(Sys.currentLangName, "English")
  }

  func testLanguage() throws {
    XCTAssertEqual(Chinese.cantonese.rawValue, "cantonese")
    XCTAssertEqual(Chinese.mandarin.rawValue, "mandarin")
    XCTAssertEqual(Chinese.simplified.rawValue, "simplified")
    XCTAssertEqual(Chinese.cantonese.display, "Cantonese")
    XCTAssertEqual(Chinese.mandarin.display, "Mandarin")
    XCTAssertEqual(Chinese.simplified.display, "Simplified")
    XCTAssertNoThrow(try Chinese.language(0))
    XCTAssertNoThrow(try Chinese.language(1))
    XCTAssertNoThrow(try Chinese.language(2))
    XCTAssertThrowsError(try Chinese.language(3))
    XCTAssertThrowsError(try Chinese.language(-1))
  }

  @available(macOS 14, *)
  func testTTS() throws {
    //  XCTAssertFalse(TTS.isSpeaking)
    XCTAssertNoThrow(
      try TTS().say(
        "我想要中國茶",
        language: Chinese.cantonese,
        rate: 0.3,
        volume: 1.0))
  }
}

@testable import SwiftSys
import XCTest
import MapKit

final class SwiftSysTests: XCTestCase {
    func testJSON() throws {
        XCTAssertThrowsError(try Sys.jsonPath("jsonfile"))
        XCTAssertThrowsError(try Sys.jsonURL("jsonfile"))
    }
    func testString() throws {
        XCTAssertEqual("id".id, "id")
        XCTAssertNoThrow(try "".urlEncode())
        XCTAssertNoThrow(try "http://technicat.com/".urlCreate())
        XCTAssertNoThrow(try "http://technicat.com/".openWeb())
    }
    func testSite() throws {
        let name = "Technicat"
        let url = URL(string: "http://technicat.com/")!
        let link = Site(name, url: url)
        XCTAssertEqual(link.name, name)
        XCTAssertEqual(link.url, url)
        XCTAssertEqual(link.id, url)
        XCTAssertEqual(link.markdown, "[Technicat](http://technicat.com/)")
        XCTAssertNoThrow(try link.url.open())
    }
    func testGoogleMap() throws {
        let link = Site(gmap: CLLocationCoordinate2D(latitude: 36.1639229,
                                                     longitude: -115.1457802))
        XCTAssertNoThrow(try link!.url.open())
    }
    func testWiktionary() throws {
        let link = Site(wkty: "芋頭糕")
        XCTAssertNoThrow(try link!.url.open())
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
        XCTAssertNoThrow(try TTS.say("我想要中國茶",
                                     language: Chinese.cantonese,
                                     rate: 0.3,
                                     volume: 1.0))
    }
}

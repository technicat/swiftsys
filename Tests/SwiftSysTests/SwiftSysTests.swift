@testable import SwiftSys
import XCTest
import MapKit

final class SwiftSysTests: XCTestCase {
    func testJSON() throws {
        XCTAssertThrowsError(try Sys.jsonPath("jsonfile"))
        XCTAssertThrowsError(try Sys.jsonURL("jsonfile"))
    }
    func testStringTrim() throws {
        XCTAssertEqual("trim", " trim  ".trimWS)
        XCTAssertEqual("trim", " trim  \n".trimWSNL)
        XCTAssertFalse("trim".isWSNL)
        XCTAssert("".isWSNL)
        XCTAssert("   ".isWSNL)
        XCTAssert(" \n\n  ".isWSNL)
    }
    func testStringURL() throws {
        XCTAssertEqual("id".id, "id")
        XCTAssertNoThrow(try "".urlEncode())
        XCTAssertNoThrow(try "http://technicat.com/".url())
        XCTAssertNoThrow(try "  http://technicat.com/ ".url())
        XCTAssertNoThrow(try "http://technicat.com/".openWeb())
        XCTAssertNoThrow(try "technicat.com".urlHttps().openWeb())
    }
    func testSite() throws {
        let name = "Technicat"
        let url = URL(string: "https://technicat.com/")!
        let link = Site(name, url: url)
        XCTAssertEqual(link.name, name)
        XCTAssertEqual(link.url, url)
        XCTAssertEqual(link.id, url)
        XCTAssertEqual(link.markdown, "[Technicat](https://technicat.com/)")
        XCTAssertNoThrow(try link.url.openWeb())
    }
    @available(iOS 16, *)
    @available(macOS 13, *)
    func testLang() throws {
        XCTAssertEqual(Sys.currentLangID, "en")
        XCTAssertEqual(Sys.currentLangName, "English")
        XCTAssertEqual(Sys.langName("en"), "English")
        XCTAssertEqual(ISO639a2.en.rawValue, "en")
        XCTAssertEqual(ISO639a2.en.display, "English")
    }
    func testAppleMap() throws {
        let link = Site(amap: CLLocationCoordinate2D(latitude: 36.1639229,
            longitude: -115.1457802))
        XCTAssertNoThrow(try link!.url.openWeb())
    }
    func testGoogleMap() throws {
        let link = Site(gmap: CLLocationCoordinate2D(latitude: 36.1639229,
            longitude: -115.1457802))
        XCTAssertNoThrow(try link!.url.openWeb())
    }
    func testOSM() throws {
        let link = Site(osm: CLLocationCoordinate2D(latitude: 36.1639229,
            longitude: -115.1457802))
        XCTAssertNoThrow(try link!.url.openWeb())
    }
    func testWiktionary() throws {
        let link = Site(wkty: "芋頭糕")
        XCTAssertNoThrow(try link!.url.openWeb())
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
        //  XCTAssertFalse(TTS.isSpeaking)
        XCTAssertNoThrow(try TTS().say("我想要中國茶",
                language: Chinese.cantonese,
                rate: 0.3,
                volume: 1.0))
    }
}

@testable import SwiftSys
import XCTest
import MapKit

final class SiteTests: XCTestCase {
  
    func testSite() throws {
        let name = "Technicat"
        let url = URL(string: "https://technicat.com/")!
        let link = Site(name, URL: url)
        XCTAssertEqual(link.name, name)
        XCTAssertEqual(link.url, url)
        XCTAssertEqual(link.id, url)
        XCTAssertEqual(link.markdown, "[Technicat](https://technicat.com/)")
        XCTAssertNoThrow(try link.url.openWeb())
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
    
    func testStringURL() throws {
        XCTAssertEqual("id".id, "id")
        XCTAssertNoThrow(try "".urlEncode())
        XCTAssertNoThrow(try "https://technicat.com/".url())
        XCTAssertNoThrow(try "  https://technicat.com/ ".url())
        XCTAssertNoThrow(try "https://technicat.com/".openWeb())
        XCTAssertNoThrow(try "technicat.com".urlHttps().openWeb())
    }
    
}

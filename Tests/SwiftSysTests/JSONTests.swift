@testable import SwiftSys
import XCTest
import Foundation
import MapKit

final class JSONTests: XCTestCase {
    func testJSON() throws {
        XCTAssertThrowsError(try Sys.jsonPath("jsonfile"))
        XCTAssertThrowsError(try Sys.jsonURL("jsonfile"))
    }
    
    func testWord() throws {
        // arrange
        let json = try Data(fromJSON: "Resources/Word")
        let decoder = JSONDecoder()
        
        // act
        let result = try decoder.decode(Word.self, from: json)
        
        // assert
        XCTAssertNotNil(result)
        XCTAssertEqual(result.id, "1032")
    }
}

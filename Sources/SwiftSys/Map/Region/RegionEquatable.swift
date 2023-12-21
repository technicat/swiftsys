import Foundation

extension Region: Equatable {

  static public func == (lhs: Region, rhs: Region) -> Bool {
    lhs.id == rhs.id
  }
}

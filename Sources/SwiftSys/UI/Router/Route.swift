import SwiftUI

@available(macOS 14.0, *)
@available(iOS 17.0, *)
extension View {

  @warn_unqualified_access
  public func route<T>(_ router: Router<T>, _ route: T) -> some View {
    self.onTapGesture {
      router.pushNew(route)
    }
  }
}


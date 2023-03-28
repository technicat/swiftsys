import Foundation

extension Region: Hashable {

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

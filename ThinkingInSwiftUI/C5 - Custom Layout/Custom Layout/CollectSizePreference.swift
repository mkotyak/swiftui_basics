import Foundation
import SwiftUI

struct CollectSizePreference: PreferenceKey {
    static var defaultValue: [Int : CGSize] = [:]
    
    static func reduce(value: inout [Int : CGSize], nextValue: () -> [Int : CGSize]) {
        value.merge(nextValue(), uniquingKeysWith: {$1})
    }
}

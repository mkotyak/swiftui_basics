import SwiftUI

fileprivate struct ColorKey: EnvironmentKey {
    static let defaultValue: Color? = nil
}


extension EnvironmentValues {
    var knobColor: Color? {
        get {
            self[ColorKey.self]
        }
        set {self[ColorKey.self] = newValue}
    }
}

extension View {
    func knobColor(_ color: Color?) -> some View {
        environment(\.knobColor, color)
    }
}

import SwiftUI

struct MyNavigationTitleKey: PreferenceKey {
    static var defaultValue: String? = nil

    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = value ?? nextValue()
    }
}

extension View {
    func myNavigationTitle(_ title: String) -> some View {
        preference(key: MyNavigationTitleKey.self, value: title)
    }
}


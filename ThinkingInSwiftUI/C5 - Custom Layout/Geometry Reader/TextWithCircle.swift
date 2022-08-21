import SwiftUI

struct TextWithCircle: View {
    @State private var width: CGFloat? = nil
    
    var body: some View {
        VStack {
            ForEach(0..<3) { _ in
                Text("Hello, World!")
                    .padding(10)
                    .background(
                        GeometryReader { geometry in
                            Color.clear
                                .preference(key: WidthKey.self, value: geometry.size.width)
                        })
                    .onPreferenceChange(WidthKey.self) {
                        self.width = $0
                    }
                    .frame(width: width, height: width)
                    .background(Circle().fill(.blue))
            }
        }
    }
}

struct WidthKey: PreferenceKey {
    static let defaultValue: CGFloat? = nil
    
    static func reduce(
        value: inout CGFloat?,
        nextValue: () -> CGFloat?
    ) {
        value = value ?? nextValue()
    }
}

struct TextWithCircle_Previews: PreviewProvider {
    static var previews: some View {
        TextWithCircle()
    }
}

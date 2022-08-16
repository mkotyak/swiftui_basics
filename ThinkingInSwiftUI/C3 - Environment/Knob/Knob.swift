import SwiftUI

struct Knob: View {
    @Binding var value: Double
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.knobColor) var envColor

    private var fillColor: Color {
        envColor ?? (colorScheme == .dark ? Color.white : Color.black)
    }

    var body: some View {
        KnobShape()
            .fill(fillColor)
            .rotationEffect(Angle(degrees: value * 330))
            .onTapGesture {
                withAnimation(.default) {
                    self.value = self.value < 0.5 ? 1 : 0
                }
            }
    }
}

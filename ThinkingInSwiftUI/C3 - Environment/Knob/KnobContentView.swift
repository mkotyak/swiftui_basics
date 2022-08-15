import SwiftUI

struct KnobContentView: View {
    @State var value: Double = 0.5
    @State var useDefaultColor = false
    @State var hue: Double = 0

    var body: some View {
        VStack {
            Knob(value: $value)
                .frame(width: 100, height: 100)
                .knobColor(useDefaultColor ? nil : Color(hue: hue, saturation: 1, brightness: 1))
            HStack {
                Text("Value")
                Slider(value: $value, in: 0...1)
            }
            HStack {
                Text("Color")
                Slider(value: $hue, in: 0...1)
            }
            Button("Toggle value", action: {
                withAnimation(.default) {
                    self.value = self.value == 0 ? 1 : 0
                }
            })
            Toggle(isOn: $useDefaultColor) {
                Text("Default color")
            }
        }
    }
}

struct KnobContentView_Previews: PreviewProvider {
    static var previews: some View {
        KnobContentView()
            .preferredColorScheme(.light)
    }
}

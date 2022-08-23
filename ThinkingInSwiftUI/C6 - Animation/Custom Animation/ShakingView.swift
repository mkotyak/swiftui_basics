import SwiftUI

struct ShakingView: View {
    @State private var taps: Int = 0

    var body: some View {
        Button("Hello") {
            withAnimation(.linear(duration: 0.5)) {
                taps += 1
            }
        }
        // shake effect with Matched Geometry Effect
        .shakeEffect(times: taps * 3)

        // shake effect with Animatable Modifier
        //.shakeModifier(times: taps * 3)
    }
}

struct ShakingView_Previews: PreviewProvider {
    static var previews: some View {
        ShakingView()
    }
}

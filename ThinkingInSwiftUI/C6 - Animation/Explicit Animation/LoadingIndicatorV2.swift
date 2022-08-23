import SwiftUI

struct LoadingIndicatorV2: View {
    @State private var isAppeared = false
    let animation = Animation
        .linear(duration: 2)
        .repeatForever(autoreverses: false)

    var body: some View {
        Circle()
            .fill(Color.accentColor)
            .frame(width: 5, height: 5)
            .offset(y: -20)
            .rotationEffect(Angle(degrees: isAppeared ? 360 : .zero))
            .onAppear {
                withAnimation(animation) {
                    isAppeared = true
                }
            }
    }
}

struct LoadingIndicatorV2_Previews: PreviewProvider {
    static var previews: some View {
        LoadingIndicatorV2()
            .previewInterfaceOrientation(.portrait)
    }
}

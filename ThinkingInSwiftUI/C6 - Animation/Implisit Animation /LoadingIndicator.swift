import SwiftUI

struct LoadingIndicator: View {
    @State private var animating: Bool = false

    var body: some View {
        VStack {
            Image(systemName: "rays")
                .rotationEffect(animating ? Angle.degrees(360) : .zero)
                .animation(.linear(duration: 2)
                    .repeatForever(autoreverses: false), value: animating)
                .onAppear {
                    self.animating = true
                }
        }
    }
}

struct LoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        LoadingIndicator()
    }
}

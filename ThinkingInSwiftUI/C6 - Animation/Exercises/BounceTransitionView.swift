import SwiftUI

struct BounceTransitionView: View {
    @State var visible = false
    
    var body: some View {
        VStack {
            Button("Toggle") {
                withAnimation(.linear(duration: 1)) {
                    self.visible.toggle()
                }
            }
            if visible {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .transition(.bounce)
            }
        }
    }
}

struct BounceTransitionView_Previews: PreviewProvider {
    static var previews: some View {
        BounceTransitionView()
    }
}

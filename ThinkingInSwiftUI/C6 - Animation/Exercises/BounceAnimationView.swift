import SwiftUI

struct BounceAnimationView: View {
    @State private var taps: Int = 0
    
       var body: some View {
           Button("Tap Me") {
               withAnimation(.linear(duration: 1)) {
                   self.taps += 1
               }
           }
           .bounce(times: taps * 3)
       }
}

struct BounceAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        BounceAnimationView()
    }
}

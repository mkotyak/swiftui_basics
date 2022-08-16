import SwiftUI

struct OverlayAndBackground: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).background(
                Capsule()
                    .stroke()
                    .padding(-5)
            )
            
            Divider()
            
            Text("5")
                .foregroundColor(.white)
                .padding(10)
                .background(.yellow)
            
            Divider()
            
            Circle()
                .stroke(lineWidth: 5)
                .frame(width: 150, height: 150)
                .overlay(alignment: .center) {
                    Text("Start")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
            
            Divider()
            
            Circle()
                .fill(.blue)
                .frame(width: 150, height: 150)
                .overlay(
                    Circle()
                        .stroke(.white, lineWidth: 2)
                        .padding(6)
                )
                .overlay(
                    Text("Start")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                )
        }
    }
}

struct OverlayAndBackground_Previews: PreviewProvider {
    static var previews: some View {
        OverlayAndBackground()
    }
}

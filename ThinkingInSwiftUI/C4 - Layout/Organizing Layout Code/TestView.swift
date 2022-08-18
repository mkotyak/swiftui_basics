import SwiftUI

struct TestView: View {
    var body: some View {
        VStack {
            // With extention
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .circle(foreground: .white, background: .gray)

            Divider()

            // With wrapper
            CircleWrapper {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
            Divider()
            
            // With ViewModifier
            Text("Hello, World!")
                .modifier(CircleModifier(foreground: .black, background: .yellow))
            
            
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

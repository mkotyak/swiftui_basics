import SwiftUI

struct MyNavigationView<Content>: View where Content: View{
    let content: Content
    @State private var title: String? = nil
    
    var body: some View {
        VStack {
            Text(title ?? "")
                .font(.largeTitle)
            content.onPreferenceChange(MyNavigationTitleKey.self) { title in
                self.title = title
            }
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView(
            content: Text("Hello")
                .myNavigationTitle("My navigation title")
                .background(.gray)
        )
    }
}

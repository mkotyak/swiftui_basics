import SwiftUI

struct TabsWithMatchedGeometryEffect: View {
    let tabs = [
        "World Clock",
        "Alarm",
        "Bedtime"
    ]

    @State var selectedTabIndex = 0
    @Namespace var ns

    var body: some View {
        HStack {
            ForEach(tabs.indices) { tabIndex in
                Button(self.tabs[tabIndex]) {
                    withAnimation(.default) {
                        self.selectedTabIndex = tabIndex
                    }
                }
                .matchedGeometryEffect(id: tabIndex, in: ns)
            }
        }
        .padding(10)
        .overlay(
            Rectangle()
                .fill(Color.accentColor)
                .frame(height: 2, alignment: .bottom)
                .matchedGeometryEffect(id: selectedTabIndex, in: ns, isSource: false)
        )
    }
}

struct TabsWithMatchedGeometryEffect_Previews: PreviewProvider {
    static var previews: some View {
        TabsWithMatchedGeometryEffect()
    }
}

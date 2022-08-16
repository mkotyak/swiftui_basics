import SwiftUI

struct AdaptiveVGridExample: View {
    var items: [GridContent]

    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 50))]) {
            ForEach(items) { item in
                item.content
                    .frame(height: 50)
            }
        }
        .padding()
        .frame(width: 400)
    }
}

struct AdaptiveVGridExample_Previews: PreviewProvider {
    static var previews: some View {
        AdaptiveVGridExample(items: [
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent(),
            GridContent()
        ])
    }
}

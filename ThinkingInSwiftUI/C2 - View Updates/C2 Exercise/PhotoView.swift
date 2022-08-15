import SwiftUI

struct PhotoView: View {
    @ObservedObject var image: Remote<UIImage>
    var aspectRatio: CGFloat

    init(_ url: URL, aspectRatio: CGFloat) {
        image = Remote(url: url, transform: { UIImage(data: $0) })
        self.aspectRatio = aspectRatio
    }

    var imageOrPlaceholder: Image {
        image.value.map(Image.init) ?? Image(systemName: "photo")
    }

    var body: some View {
        imageOrPlaceholder
            .resizable()
            .foregroundColor(.secondary)
            .aspectRatio(aspectRatio, contentMode: .fit)
            .padding()
            .onAppear {
                image.load()
            }
    }
}

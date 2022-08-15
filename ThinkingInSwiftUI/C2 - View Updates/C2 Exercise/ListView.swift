import SwiftUI

struct ListView: View {
    @StateObject var items = Remote(
        url: URL(string: "https://picsum.photos/v2/list")!,
        transform: { try? JSONDecoder().decode([Photo].self, from: $0) }
    )

    var body: some View {
        NavigationView {
            if let photos = items.value {
                List(photos) { photo in
                    NavigationLink(
                        destination: PhotoView(
                            photo.download_url,
                            aspectRatio: photo.width / photo.height
                        )
                    ) {
                        Text(photo.author)
                    }
                }
            } else {
                ProgressView()
                    .onAppear {
                        items.load()
                    }
            }
        }
    }
}

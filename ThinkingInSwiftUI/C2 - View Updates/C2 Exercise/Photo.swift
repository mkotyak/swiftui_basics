import SwiftUI

struct Photo: Codable, Identifiable {
    var id: String
    var author: String
    var width: CGFloat
    var height: CGFloat
    var url: URL
    var download_url: URL
}


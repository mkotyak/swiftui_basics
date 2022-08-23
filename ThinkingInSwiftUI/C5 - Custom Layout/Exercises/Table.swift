import Foundation
import SwiftUI

struct Table<Cell: View>: View {
    var cells: [[Cell]]
    let padding: CGFloat = 5
    @State private var columnWidths: [Int: CGFloat] = [:]

    func cellFor(row: Int, column: Int) -> some View {
        cells[row][column]
            .widthPreference(column: column)
            .frame(width: columnWidths[column], alignment: .leading)
            .padding(padding)
    }

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(cells.indices) { row in
                HStack(alignment: .top) {
                    ForEach(cells[row].indices) { column in
                        self.cellFor(row: row, column: column)
                    }
                }
                .background(
                    row.isMultiple(of: 2) ? Color(.secondarySystemBackground) : Color(.systemBackground)
                )
            }
        }
        .onPreferenceChange(WidthPreference.self) {
            self.columnWidths = $0
        }
    }
}

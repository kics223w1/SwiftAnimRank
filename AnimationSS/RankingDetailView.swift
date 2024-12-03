import SwiftUI

struct RankingDetailView: View {
    var ranking: RankingItem

    var body: some View {
        VStack {
            Text("Rank Details")
                .font(.largeTitle)
                .padding()

            if ranking.index == 1 {
                Animation1()
            } else if ranking.index == 2 {
                Animation2()
            } else if ranking.index == 3 {
                Animation3()
            } else {
                Text("No Animation Available")
                    .font(.title)
            }
        }
        .navigationTitle("Detail View")
        .padding()
    }
}

#Preview {
    RankingDetailView(ranking: RankingItem(index: 1, name: "Alice", points: 120))
}

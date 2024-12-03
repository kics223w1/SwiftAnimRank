import SwiftUI

struct RankingDetailView: View {
    var ranking: RankingItem
    
    var body: some View {
        VStack {
            Text("Rank Details")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Text("Index:")
                    .font(.headline)
                Text("\(ranking.index)")
            }
            .padding()
            
            HStack {
                Text("Name:")
                    .font(.headline)
                Text(ranking.name)
            }
            .padding()
            
            HStack {
                Text("Points:")
                    .font(.headline)
                Text("\(ranking.points)")
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle("Detail View")
        .padding()
    }
}

#Preview {
    RankingDetailView(ranking: RankingItem(index: 1, name: "Alice", points: 120))
}

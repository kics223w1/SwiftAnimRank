import SwiftUI

struct RankingItem: Identifiable {
    var id = UUID()
    var index: Int
    var name: String
    var points: Int
}

struct ContentView: View {
    let rankings = [
        RankingItem(index: 1, name: "Alice", points: 120),
        RankingItem(index: 2, name: "Bob", points: 115),
        RankingItem(index: 3, name: "Charlie", points: 110),
        RankingItem(index: 4, name: "David", points: 100),
        RankingItem(index: 5, name: "Eve", points: 95)
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Index")
                        .font(.headline)
                        .frame(width: 50, alignment: .leading)
                    Text("Name")
                        .font(.headline)
                        .frame(width: 150, alignment: .leading)
                    Text("Points")
                        .font(.headline)
                        .frame(width: 100, alignment: .leading)
                }
                .padding(.bottom, 5)
                
                List(rankings) { ranking in
                    NavigationLink(destination: RankingDetailView(ranking: ranking)) {
                        HStack {
                            Text("\(ranking.index)")
                                .frame(width: 50, alignment: .leading)
                            Text(ranking.name)
                                .frame(width: 150, alignment: .leading)
                            Text("\(ranking.points)")
                                .frame(width: 100, alignment: .leading)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Ranking Dashboard")
        }
    }
}

#Preview {
    ContentView()
}

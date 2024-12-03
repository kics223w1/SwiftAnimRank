import SwiftUI

struct Animation2: View {
    @State private var scale = 1.0

    var body: some View {
        VStack {
            Text("Animation 2")
                .font(.largeTitle)
                .padding()

            Circle()
                .frame(width: 100, height: 100)
                .scaleEffect(scale)
                .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: scale)
                .onAppear {
                    scale = 1.5
                }
        }
        .padding()
    }
}

#Preview {
    Animation2()
}

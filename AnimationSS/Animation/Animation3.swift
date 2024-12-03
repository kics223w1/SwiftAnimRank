import SwiftUI

struct Animation3: View {
    @State private var offset = -200.0

    var body: some View {
        VStack {
            Text("Animation 3")
                .font(.largeTitle)
                .padding()

            Rectangle()
                .frame(width: 200, height: 50)
                .offset(x: offset)
                .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: offset)
                .onAppear {
                    offset = 200
                }
        }
        .padding()
    }
}

#Preview {
    Animation3()
}

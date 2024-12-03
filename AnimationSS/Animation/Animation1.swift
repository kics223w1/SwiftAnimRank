import SwiftUI

struct Animation1: View {
    @State private var isRotating = false

    var body: some View {
        VStack {
            Text("Animation 1")
                .font(.largeTitle)
                .padding()

            Image(systemName: "globe")
                .resizable()
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(isRotating ? 360 : 0))
                .animation(.easeInOut(duration: 2).repeatForever(autoreverses: false), value: isRotating)
                .onAppear {
                    isRotating = true
                }
        }
        .padding()
    }
}

#Preview {
    Animation1()
}

struct ContentView: View {
    @State private var swipeDirection: SwipeDirection = .none

    var body: some View {
        GeometryReader { geometry in
            Color.clear
                .frame(width: geometry.size.width, height: geometry.size.height)
                .gesture(SwipeGesture(value: .constant(0), direction: .none)
                    .onGestureEnded { direction in
                        if direction == .right {
                            print("Swipe right")
                        } else if direction == .left {
                            print("Swipe left")
                        }
                    })
        }
    }
}

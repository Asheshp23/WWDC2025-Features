import SwiftUI

struct AnimatedRainbowArc: View {
  @State private var progress: CGFloat = 0.15
  
  let arcSizes: [CGFloat] = [150, 200, 250, 300, 350]
  let staticRanges = [(0.25, 0.29), (0.25, 0.30), (0.25, 0.31), (0.25, 0.32)]
  let staticRanges2 = [(0.50, 0.55),(0.30, 0.45),(0.30, 0.45),(0.30, 0.45)]
  
  var body: some View {
    ZStack {
      // Static arcs
      ForEach(0..<4, id: \.self) { index in
        Circle()
          .trim(from: staticRanges[index].0, to: staticRanges[index].1)
          .stroke(rainbowGradient, style: strokeStyle)
          .rotationEffect(.degrees(90))
          .frame(width: arcSizes[index + 1], height: arcSizes[index + 1])
      }
      
      ForEach(0..<4, id: \.self) { index in
        Circle()
          .trim(from: staticRanges2[index].0, to: staticRanges[index].1)
          .stroke(rainbowGradient, style: strokeStyle)
          .rotationEffect(.degrees(90))
          .frame(width: arcSizes[index + 1], height: arcSizes[index + 1])
      }
      
      // Animated arcs
      ForEach(0..<4, id: \.self) { index in
        Circle()
          .trim(from: 0.15, to: progress)
          .stroke(rainbowGradient, style: strokeStyle)
          .rotationEffect(.degrees(-90))
          .frame(width: arcSizes[index], height: arcSizes[index])
      }
    }
    .onAppear {
      withAnimation(.easeInOut(duration: 2)) {
        progress = 0.25
      }
    }
  }
  
  private var rainbowGradient: AngularGradient {
    AngularGradient(
      colors: [.red, .orange, .yellow, .green],
      center: .center
    )
  }
  
  private var strokeStyle: StrokeStyle {
    StrokeStyle(lineWidth: 20, lineCap: .round)
  }
}

#Preview {
  AnimatedRainbowArc()
}


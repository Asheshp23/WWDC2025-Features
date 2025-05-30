import SwiftUI

struct WWDC25StyleView: View {
  // Rainbow Configuration
  let numberOfBands: Int = 4 // As seen in the image
  let initialRadius: CGFloat = 60
  let bandThickness: CGFloat = 25
  let bandSpacing: CGFloat = 3 // Bands are close
  
  let rainbowBorderWidth: CGFloat = 1.5
  
  @State private var hueRotateAngle: Double = 0.0
  
  var body: some View {
    let maxOuterRadius = initialRadius + CGFloat(numberOfBands) * (bandThickness + bandSpacing)
    VStack {
      ZStack {
        ForEach(0..<numberOfBands, id: \.self) { index in
          let outerRadius = initialRadius + CGFloat(index + 1) * (bandThickness + bandSpacing)
          let innerRadius = outerRadius - bandThickness
          RainbowArc(startRadius: innerRadius, endRadius: outerRadius)
            .fill(.ultraThinMaterial)
          
          RainbowArc(startRadius: innerRadius, endRadius: outerRadius)
            .stroke(.ultraThinMaterial ,
                    lineWidth: rainbowBorderWidth
            )
            .fill(LinearGradient(colors: rainbowBorderColors, startPoint: .topTrailing, endPoint: .bottomLeading))
            .hueRotation(.degrees(hueRotateAngle))
            .opacity(1.0 - (Double(index) * 0.05))
            .shadow(color: .black.opacity(0.08), radius: 5, x: 0, y: 3 + CGFloat(index) * 1.5)
        }
      }
      .frame(height: maxOuterRadius)
      .padding(.top, 100)
      .padding(.bottom, -70)
      Text("WWDC25")
        .font(.system(size: 60, weight: .bold, design: .default))
        .foregroundStyle(
          LinearGradient(
            gradient: Gradient(colors: wwdcGradientColors),
            startPoint: .leading,
            endPoint: .trailing
          )
        )
        .hueRotation(.degrees(hueRotateAngle))
    }
    .padding(.horizontal)
    .onAppear {
      withAnimation(Animation.linear(duration: 8.0).repeatForever(autoreverses: true)) {
        hueRotateAngle += 180
      }
    }
    .frame(maxWidth: .infinity)
    .background(.thinMaterial)
    .clipShape(RoundedRectangle(cornerRadius: 20))
  }
}

#Preview {
  WWDC25StyleView()
}

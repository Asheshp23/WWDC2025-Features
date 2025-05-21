//
//  OSUpdatesGridView.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import SwiftUI

struct OSUpdatesGridView: View {
  let columns = [GridItem(.adaptive(minimum: 100), spacing: 15)]
  
  var body: some View {
    LazyVGrid(columns: columns, spacing: 20) {
      ForEach(wwdcFeatures) { feature in
        VStack {
          Image(systemName: feature.iconName)
            .font(.system(size: 30))
            .frame(width: 60, height: 60)
            .background(feature.color.opacity(0.3)) // Subtle background for the icon itself
            .clipShape(RoundedRectangle(cornerRadius: 15)) // Rounded icon shape
            .foregroundColor(feature.color)
            .shadow(color: feature.color.opacity(0.5), radius: 5, y: 3) // Glossy/floating hint
          
          Text(feature.name)
            .font(.caption)
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
        }
        .padding(8)
        .background(.regularMaterial) // Glassy background for the whole cell
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.2), radius: 3, x: 0, y: 2)
      }
    }
  }
}

#Preview {
  OSUpdatesGridView()
}

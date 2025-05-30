//
//  RumoredFeaturesListView.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import SwiftUI

struct RumoredFeaturesListView: View {
  var body: some View {
    LazyVStack(alignment: .leading, spacing: 16) {
      ForEach(rumoredFeatures.indices, id: \.self) { index in
        let feature = rumoredFeatures[index]
        FeatureRow(feature: feature)
      }
    }
    .padding()
    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 16))
    .shadow(color: .black.opacity(0.08), radius: 8, x: 0, y: 4)
  }
}

struct FeatureRow: View {
  let feature: AppFeature
  
  var body: some View {
    HStack(spacing: 12) {
      Image(systemName: feature.iconName)
        .font(.title2)
        .foregroundStyle(feature.color)
        .frame(width: 28, alignment: .center)
      
      VStack(alignment: .leading, spacing: 2) {
        Text(feature.name)
          .font(.subheadline)
          .fontWeight(.medium)
        
        Text(feature.platform.rawValue)
          .font(.caption)
          .foregroundStyle(.secondary)
      }
      
      Spacer()
      
      if feature.isRumored {
        Text("RUMORED")
          .font(.caption2)
          .fontWeight(.semibold)
          .foregroundStyle(.orange)
          .padding(.horizontal, 6)
          .padding(.vertical, 2)
          .background(.orange.opacity(0.1), in: Capsule())
      }
    }
  }
}

#Preview {
  RumoredFeaturesListView()
}

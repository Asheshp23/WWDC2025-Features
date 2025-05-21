//
//  RumoredFeaturesListView.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import SwiftUI

struct RumoredFeaturesListView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      ForEach(rumoredFeatures, id: \.0) { featureName, iconName, osTag in
        HStack {
          Image(systemName: iconName)
            .foregroundColor(.accentColor)
            .frame(width: 25)
          VStack(alignment: .leading) {
            Text(featureName)
              .font(.headline)
            Text(osTag)
              .font(.caption)
              .foregroundColor(.secondary)
          }
        }
      }
    }
    .padding()
    .background(.thinMaterial)
    .clipShape(RoundedRectangle(cornerRadius: 15))
    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
  }
}

#Preview {
  RumoredFeaturesListView()
}

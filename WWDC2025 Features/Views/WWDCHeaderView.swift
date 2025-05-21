//
//  WWDCHeaderView.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import SwiftUI

struct WWDCHeaderView: View {
  var body: some View {
    VStack {
      Image(systemName: "apple.logo") // Or a custom WWDC logo if you have one
        .font(.system(size: 50))
        .foregroundColor(.primary)
        .padding(.bottom, 5)
      
      Text("WWDC 2025")
        .font(.largeTitle).bold()
      Text("June 9-13: Redefining Innovation!")
        .font(.headline)
        .foregroundColor(.secondary)
    }
    .frame(maxWidth: .infinity)
    .padding(.vertical)
  }
}

#Preview {
  WWDCHeaderView()
}

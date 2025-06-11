//
//  GlassyShowcaseView.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import SwiftUI

struct GlassyShowcaseView: View {
  var body: some View {
    if #available(iOS 26.0, *) {
      VStack(alignment: .leading, spacing: 15) {
        Text("Imagine glossy, floating icons and translucent menus...")
          .font(.subheadline)
          .foregroundColor(.secondary)
          .padding(.bottom, 5)
        
        HStack(spacing: 20) {
          // Mock "Floating Icon"
          VStack {
            Image(systemName: "sparkles")
              .font(.system(size: 40))
              .foregroundColor(.yellow)
              .frame(width: 80, height: 80)
              .glassEffect()
            Text("Glossy Icon")
              .font(.caption)
          }
          
          // Mock "Translucent Menu Item"
          VStack(alignment: .leading) {
            Text("Menu Item 1")
            Divider()
            Text("Menu Item 2")
            Divider()
            Text("Settings")
          }
          .padding()
          .frame(width: 150, height: 100, alignment: .leading)
          .padding()
          .glassEffect(.regular)
        }
      }
      .padding()
      .frame(maxWidth: .infinity)
      .glassEffect()
    } else {
      VStack {
        Spacer()
        Text("This feature requires iOS 26.0 or newer.")
          .foregroundColor(.secondary)
          .multilineTextAlignment(.center)
        Spacer()
      }
    }
  }
}

#Preview {
  GlassyShowcaseView()
}

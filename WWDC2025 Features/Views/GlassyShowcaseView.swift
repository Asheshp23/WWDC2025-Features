//
//  GlassyShowcaseView.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import SwiftUI

struct GlassyShowcaseView: View {
  var body: some View {
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
            .background(.regularMaterial) // Glassy background
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5) // Floating effect
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
        .background(.ultraThinMaterial) // Translucent effect
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
      }
    }
    .padding()
    .frame(maxWidth: .infinity)
    .background(.thinMaterial) // Overall card translucency
    .clipShape(RoundedRectangle(cornerRadius: 20))
    .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
  }
}

#Preview {
  GlassyShowcaseView()
}

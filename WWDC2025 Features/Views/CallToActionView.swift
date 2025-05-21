//
//  CallToActionView.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import SwiftUI

struct CallToActionView: View {
  var body: some View {
    VStack(spacing: 10) {
      Text("What are you most hyped for?")
        .font(.headline)
      
      Button(action: {
        // In a real app, this would open LinkedIn or a share sheet
        print("LinkedIn Live button tapped!")
      }) {
        Label("Join on June 9", systemImage: "calendar.badge.plus")
          .padding()
          .frame(maxWidth: .infinity)
          .background(Color.blue)
          .foregroundColor(.white)
          .clipShape(Capsule())
          .shadow(radius: 5)
      }
      
      Text("Share to spread the excitement! #WWDC2025")
        .font(.caption)
        .foregroundColor(.secondary)
    }
    .padding()
    .background(.regularMaterial)
    .clipShape(RoundedRectangle(cornerRadius: 20))
    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
  }
}

#Preview {
  CallToActionView()
}

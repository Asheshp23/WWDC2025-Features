//
//  ContentView.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 20) {
        WWDC25StyleView()
          .padding(.horizontal)
        SectionHeader(title: "Vision Pro-Inspired UI")
        GlassyShowcaseView()
          .padding(.horizontal)
        SectionHeader(title: "OS Updates")
        OSUpdatesGridView()
          .padding(.horizontal)
        SectionHeader(title: "Rumored Highlights")
        RumoredFeaturesListView()
          .padding(.horizontal)
        CallToActionView()
          .padding(.horizontal)
          .padding(.top)
      }
    }
    .padding(.top)
  }
}

#Preview {
  ContentView()
}

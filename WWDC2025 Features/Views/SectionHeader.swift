//
//  SectionHeader.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import SwiftUI

struct SectionHeader: View {
  let title: String
  var body: some View {
    Text(title)
      .font(.title2).bold()
      .padding(.horizontal)
      .padding(.top)
  }
}

#Preview {
  SectionHeader(title: "WWDC25")
}

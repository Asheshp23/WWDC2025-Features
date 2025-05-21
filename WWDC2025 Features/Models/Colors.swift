//
//  Colors.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import Foundation
import SwiftUICore

let wwdcGradientColors: [Color] = [
  Color(red: 0.85, green: 0.5, blue: 0.6).opacity(0.6),  // Darker Soft Pink
  Color(red: 0.65, green: 0.6, blue: 0.8).opacity(0.6), // Darker Lavender
  Color(red: 0.5, green: 0.7, blue: 0.85).opacity(0.6), // Darker Light Blue
  Color(red: 0.4, green: 0.75, blue: 0.7).opacity(0.6), // Darker Aqua/Teal
  Color(red: 0.6, green: 0.8, blue: 0.6).opacity(0.6),  // Darker Light Green
  Color(red: 0.85, green: 0.75, blue: 0.4).opacity(0.6), // Darker Soft Yellow
  Color(red: 0.85, green: 0.6, blue: 0.4).opacity(0.6)   // Darker Soft Orange
]

// Colors for the rainbow border (more opaque, also darkened)
let rainbowBorderColors: [Color] = [
  Color(red: 0.85, green: 0.5, blue: 0.6),  // Darker Pink
  Color(red: 0.65, green: 0.6, blue: 0.8),  // Darker Lavender
  Color(red: 0.5, green: 0.7, blue: 0.85), // Darker Light Blue
  Color(red: 0.4, green: 0.75, blue: 0.7),  // Darker Aqua/Teal
  Color(red: 0.6, green: 0.8, blue: 0.6),   // Darker Light Green
  Color(red: 0.85, green: 0.75, blue: 0.4), // Darker Soft Yellow
  Color(red: 0.85, green: 0.6, blue: 0.4)    // Darker Soft Orange
]

// WWDC Text Gradient Colors (darkened by reducing the 0-255 scale numerators)
// Generally reducing values by 20-40 points for brighter components.
let wwdcTextGradientColors: [Color] = [
  Color(red: 190/255, green: 60/255, blue: 100/255), // W - Darker Pinkish
  Color(red: 140/255, green: 65/255, blue: 130/255), // W - Darker Purple
  Color(red: 50/255, green: 100/255, blue: 160/255), // D - Darker Blue
  Color(red: 35/255, green: 140/255, blue: 150/255), // C - Darker Cyan/Teal
  Color(red: 120/255, green: 170/255, blue: 70/255), // 2 - Darker Yellow-Green
  Color(red: 210/255, green: 120/255, blue: 50/255)  // 5 - Darker Orange
]

// The LinearGradient and bannerBackgroundColor remain structurally the same,
// just using the new darker color arrays.
let wwdcTextGradient = LinearGradient(
  gradient: Gradient(colors: wwdcTextGradientColors),
  startPoint: .leading,
  endPoint: .trailing
)

// Background color (very light gray) - This usually doesn't need to change
// unless you want an overall darker theme.
let bannerBackgroundColor = Color(white: 0.97) // or Color(white: 0.95) for slightly darker bg

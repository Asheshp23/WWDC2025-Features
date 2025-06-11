//
//  AppFeature.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import Foundation
import SwiftUI

struct AppFeature {
  let name: String
  let iconName: String
  let platform: Platform
  let color: Color
  let isRumored: Bool
}

enum Platform: String, CaseIterable {
  case iOS = "iOS 26"
  case iPadOS = "iPadOS 26"
  case macOS = "macOS 26"
  case watchOS = "watchOS 26"
  case tvOS = "tvOS 26"
  case visionOS = "visionOS 26"
  case hardware = "Hardware"
  
  var iconName: String {
    switch self {
    case .iOS: return "iphone"
    case .iPadOS: return "ipad"
    case .macOS: return "desktopcomputer"
    case .watchOS: return "applewatch"
    case .tvOS: return "appletv"
    case .visionOS: return "vision.pro"
    case .hardware: return "macpro.gen3"
    }
  }
  
  var color: Color {
    switch self {
    case .iOS: return .blue
    case .iPadOS: return .indigo
    case .macOS: return .mint
    case .watchOS: return .orange
    case .tvOS: return .red
    case .visionOS: return .cyan
    case .hardware: return .gray
    }
  }
}

let rumoredFeatures = [
  AppFeature(name: "AI Battery Management", iconName: "battery.100.bolt", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Revamped Health App", iconName: "heart.fill", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Design Overhaul", iconName: "paintbrush.fill", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Design Overhaul", iconName: "paintbrush.fill", platform: .iPadOS, color: .indigo, isRumored: true),
  AppFeature(name: "Design Overhaul", iconName: "paintbrush.fill", platform: .macOS, color: .mint, isRumored: true),
  AppFeature(name: "Siri Upgrades", iconName: "mic.circle.fill", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Third-party Chat Apps", iconName: "message.fill", platform: .iPadOS, color: .indigo, isRumored: true),
  AppFeature(name: "Mac Pro", iconName: "macpro.gen3", platform: .hardware, color: .gray, isRumored: true),
  AppFeature(name: "Accessibility Labels", iconName: "app.badge", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Magnifier for Mac", iconName: "magnifyingglass", platform: .macOS, color: .mint, isRumored: true),
  AppFeature(name: "Braille Support", iconName: "textformat", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Accessibility Reader", iconName: "doc.text", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Live Captions", iconName: "captions.bubble", platform: .watchOS, color: .orange, isRumored: true),
  AppFeature(name: "Personal Voice", iconName: "mic.fill", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Motion Cues", iconName: "car.fill", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Eye Tracking", iconName: "eye.fill", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Music Haptics", iconName: "music.note", platform: .iOS, color: .blue, isRumored: true),
  AppFeature(name: "Sound Recognition", iconName: "ear", platform: .iOS, color: .blue, isRumored: true)
]

let wwdcFeatures = [
  AppFeature(name: "iOS 26", iconName: "iphone", platform: .iOS, color: .blue, isRumored: false),
  AppFeature(name: "iPadOS 26", iconName: "ipad", platform: .iPadOS, color: .indigo, isRumored: false),
  AppFeature(name: "macOS 26", iconName: "desktopcomputer", platform: .macOS, color: .mint, isRumored: false),
  AppFeature(name: "watchOS 26", iconName: "applewatch", platform: .watchOS, color: .orange, isRumored: false),
  AppFeature(name: "tvOS 26", iconName: "appletv",platform: .tvOS, color: .red, isRumored: false),
  AppFeature(name: "visionOS 26", iconName: "vision.pro", platform: .visionOS, color: .cyan, isRumored: false)
]

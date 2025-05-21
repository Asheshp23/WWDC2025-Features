//
//  AppFeature.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import Foundation
import SwiftUICore

struct AppFeature: Identifiable {
  let id = UUID()
  var name: String
  var iconName: String
  var color: Color
}

let wwdcFeatures = [
  AppFeature(name: "iOS 19", iconName: "iphone.gen3", color: .blue),
  AppFeature(name: "iPadOS 19", iconName: "ipad.gen2", color: .indigo),
  AppFeature(name: "macOS 16", iconName: "desktopcomputer", color: .mint),
  AppFeature(name: "watchOS 12", iconName: "applewatch", color: .orange),
  AppFeature(name: "tvOS 19", iconName: "appletv", color: .red),
  AppFeature(name: "visionOS 3", iconName: "visionpro", color: .cyan)
]

let rumoredFeatures = [
  ("AI Battery Management", "bolt.batteryblock.fill", "iOS 19"),
  ("Revamped Health App", "heart.text.square.fill", "iOS 19"),
  ("macOS Redwood/Shasta", "tree.fill", "macOS 16"),
  ("Mac Pro M3 Extreme", "macpro.gen3.fill", "Hardware")
]

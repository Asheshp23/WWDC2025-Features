//
//  RainbowArc.swift
//  WWDC2025 Features
//
//  Created by Ashesh Patel on 2025-05-20.
//
import SwiftUI

struct RainbowArc: Shape {
    var startRadius: CGFloat
    var endRadius: CGFloat
    let startAngle: Angle = .degrees(0)
    let endAngle: Angle = .degrees(180)
    
    func path(in rect: CGRect) -> Path {
      var path = Path()
      let center = CGPoint(x: rect.midX, y: rect.midY) // Assumes center of the rect
      
      // Outer arc
      path.addArc(center: center, radius: endRadius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
      // Line to inner arc start
      path.addArc(center: center, radius: startRadius, startAngle: endAngle, endAngle: startAngle, clockwise: false)
      path.closeSubpath()
      
      return path
    }
  }

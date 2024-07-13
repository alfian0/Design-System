//
//  File.swift
//  
//
//  Created by alfian on 11/07/24.
//

import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
  public init() {}
  
  public func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .font(.Label.m)
      .padding(Spacing.medium)
      .background(Capsule().fill(Color.backgrounddAccentEmphasis))
      .foregroundColor(.white)
      .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
  }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
  public static var primary: Self { Self() }
}

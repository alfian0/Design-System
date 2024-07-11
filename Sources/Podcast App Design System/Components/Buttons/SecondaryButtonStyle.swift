//
//  File.swift
//  
//
//  Created by alfian on 11/07/24.
//

import SwiftUI

public struct SecondaryButtonStyle: ButtonStyle {
  public init() {}
  
  public func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .font(.h4)
      .padding(Spacing.medium)
      .foregroundColor(Color.foregroundEmphasis)
      .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
  }
}

extension ButtonStyle where Self == SecondaryButtonStyle {
  public static var secondary: Self { Self() }
}

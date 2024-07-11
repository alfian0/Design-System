//
//  File.swift
//  
//
//  Created by alfian on 11/07/24.
//

import SwiftUI

public struct PrimaryTextFieldStyle: TextFieldStyle {
  public init() {}
  
  public func _body(configuration: TextField<_Label>) -> some View {
    configuration
        .padding(Spacing.medium)
        .background(Color.backgroundMuted)
        .cornerRadius(18)
        .padding(.vertical, Spacing.small)
  }
}

extension TextFieldStyle where Self == PrimaryTextFieldStyle {
  public static var primary: Self { Self() }
}

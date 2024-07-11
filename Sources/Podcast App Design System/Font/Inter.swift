//
//  File.swift
//  
//
//  Created by alfian on 11/07/24.
//

import SwiftUI

public enum Inter: String, CaseIterable {
  case thin = "Inter-Thin"
  case bold = "Inter-Bold"
  case light = "Inter-Light"
  case black = "Inter-Black"
  case medium = "Inter-Medium"
  case regular = "Inter-Regular"
  case semiBold = "Inter-SemiBold"
  case extraBold = "Inter-ExtraBold"
  case extraLight = "Inter-ExtraLight"
}

public struct InterFont {
  public static func registerFonts() {
    Inter.allCases.forEach {
      registerFont(bundle: .module, fontName: $0.rawValue, fontExtension: "ttf")
    }
  }

  fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
    guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
          let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
          let font = CGFont(fontDataProvider) else {
      fatalError("Couldn't ceate font from filename: \(fontName) with extension \(fontExtension)")
    }
    var error: Unmanaged<CFError>?
    CTFontManagerRegisterGraphicsFont(font, &error)
  }
}

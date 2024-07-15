//
//  File.swift
//  
//
//  Created by alfian on 11/07/24.
//

import SwiftUI

extension Font {
  public static func notoSans(_ font: NotoSans, size: CGFloat) -> Font {
    return .custom(font.rawValue, size: size)
  }
  
  public static func inter(_ font: Inter, size: CGFloat) -> Font {
    return .custom(font.rawValue, size: size)
  }
}

public extension Font {
  struct Display {
    public static let xs = notoSans(.bold, size: UIFontMetrics.default.scaledValue(for: 28))
    public static let s = notoSans(.bold, size: UIFontMetrics.default.scaledValue(for: 32))
    public static let m = notoSans(.bold, size: UIFontMetrics.default.scaledValue(for: 36))
    public static let l = notoSans(.bold, size: UIFontMetrics.default.scaledValue(for: 40))
    public static let xl = notoSans(.bold, size: UIFontMetrics.default.scaledValue(for: 44))
  }
  
  struct Heading {
    public static let xs = notoSans(.semiBold, size: UIFontMetrics.default.scaledValue(for: 20))
    public static let s = notoSans(.semiBold, size: UIFontMetrics.default.scaledValue(for: 24))
    public static let m = notoSans(.semiBold, size: UIFontMetrics.default.scaledValue(for: 28))
    public static let l = notoSans(.semiBold, size: UIFontMetrics.default.scaledValue(for: 32))
    public static let xl = notoSans(.semiBold, size: UIFontMetrics.default.scaledValue(for: 36))
  }
  
  struct Paragraph {
    public static let xs = inter(.regular, size: UIFontMetrics.default.scaledValue(for: 12))
    public static let s = inter(.regular, size: UIFontMetrics.default.scaledValue(for: 14))
    public static let m = inter(.regular, size: UIFontMetrics.default.scaledValue(for: 16))
    public static let l = inter(.regular, size: UIFontMetrics.default.scaledValue(for: 18))
    public static let xl = inter(.regular, size: UIFontMetrics.default.scaledValue(for: 20))
  }
  
  struct Label {
    public static let xs = notoSans(.medium, size: UIFontMetrics.default.scaledValue(for: 10))
    public static let s = notoSans(.medium, size: UIFontMetrics.default.scaledValue(for: 12))
    public static let m = notoSans(.medium, size: UIFontMetrics.default.scaledValue(for: 14))
    public static let l = notoSans(.medium, size: UIFontMetrics.default.scaledValue(for: 16))
    public static let xl = notoSans(.medium, size: UIFontMetrics.default.scaledValue(for: 18))
  }
}

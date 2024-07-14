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
    public static let xs = notoSans(.bold, size: 28)
    public static let s = notoSans(.bold, size: 32)
    public static let m = notoSans(.bold, size: 36)
    public static let l = notoSans(.bold, size: 40)
    public static let xl = notoSans(.bold, size: 44)
  }
  
  struct Heading {
    public static let xs = notoSans(.semiBold, size: 20)
    public static let s = notoSans(.semiBold, size: 24)
    public static let m = notoSans(.semiBold, size: 28)
    public static let l = notoSans(.semiBold, size: 32)
    public static let xl = notoSans(.semiBold, size: 36)
  }
  
  struct Paragraph {
    public static let xs = inter(.regular, size: 12)
    public static let s = inter(.regular, size: 14)
    public static let m = inter(.regular, size: 16)
    public static let l = inter(.regular, size: 18)
    public static let xl = inter(.regular, size: 20)
  }
  
  struct Label {
    public static let xs = notoSans(.medium, size: 10)
    public static let s = notoSans(.medium, size: 12)
    public static let m = notoSans(.medium, size: 14)
    public static let l = notoSans(.medium, size: 16)
    public static let xl = notoSans(.medium, size: 18)
  }
}

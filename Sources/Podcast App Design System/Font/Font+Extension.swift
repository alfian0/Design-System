//
//  File.swift
//  
//
//  Created by alfian on 11/07/24.
//

import SwiftUI

extension Font {
  public static var h1: Font = {
    return notoSans(.bold, size: 36)
  }()
  
  public static var h2: Font = {
    return notoSans(.semiBold, size: 24)
  }()
  
  public static var h3: Font = {
    return notoSans(.medium, size: 18)
  }()
  
  public static var h4: Font = {
    return notoSans(.medium, size: 14)
  }()
  
  public static var h5: Font = {
    return notoSans(.medium, size: 12)
  }()
  
  public static var h6: Font = {
    return notoSans(.regular, size: 12)
  }()
  
  public static var body1: Font = {
    return inter(.regular, size: 16)
  }()
  
  public static var body2: Font = {
    return inter(.medium, size: 14)
  }()
  
  public static var body3: Font = {
    return inter(.regular, size: 14)
  }()
  
  public static var body4: Font = {
    return inter(.medium, size: 12)
  }()
  
  public static var body5: Font = {
    return inter(.regular, size: 12)
  }()
  
  public static func notoSans(_ font: NotoSans, size: CGFloat) -> Font {
    return .custom(font.rawValue, size: size)
  }
  
  public static func inter(_ font: Inter, size: CGFloat) -> Font {
    return .custom(font.rawValue, size: size)
  }
}

struct TitleStyle: ViewModifier {
  func body(content: Content) -> some View {
    content.font(.h1)
  }
}

extension View {
  public func titleStyle() -> some View {
    modifier(TitleStyle())
  }
}

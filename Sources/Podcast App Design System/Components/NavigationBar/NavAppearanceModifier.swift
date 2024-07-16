//
//  File.swift
//  
//
//  Created by alfian on 16/07/24.
//

import SwiftUI
import UIKit

public struct NavAppearanceModifier: ViewModifier {
  public init(backgroundColor: UIColor, foregroundColor: UIColor, tintColor: UIColor?, hideSeparator: Bool) {
    let backButtonAppearance = UIBarButtonItemAppearance(style: .plain)
    backButtonAppearance.focused.titleTextAttributes = [.foregroundColor: UIColor.clear]
    backButtonAppearance.disabled.titleTextAttributes = [.foregroundColor: UIColor.clear]
    backButtonAppearance.highlighted.titleTextAttributes = [.foregroundColor: UIColor.clear]
    backButtonAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.clear]
    
    let navBarApearance = UINavigationBarAppearance()
    navBarApearance.titleTextAttributes = [.foregroundColor: foregroundColor]
    navBarApearance.largeTitleTextAttributes = [.foregroundColor: foregroundColor]
    navBarApearance.backgroundColor = backgroundColor
    navBarApearance.backButtonAppearance = backButtonAppearance
    navBarApearance.setBackIndicatorImage(UIImage(named: "ic_back"), transitionMaskImage: UIImage(named: "ic_back"))
    if hideSeparator {
      navBarApearance.shadowColor = .clear
    }
    UINavigationBar.appearance().standardAppearance = navBarApearance
    UINavigationBar.appearance().compactAppearance = navBarApearance
    UINavigationBar.appearance().scrollEdgeAppearance = navBarApearance
    if let tintColor = tintColor {
      UINavigationBar.appearance().tintColor = tintColor
    }
  }
  
  public func body(content: Content) -> some View {
    content
  }
}

public extension View {
  func navigationAppearance(backgroundColor: UIColor, foregroundColor: UIColor, tintColor: UIColor? = nil, hideSeparator: Bool = false) -> some View {
    self.modifier(NavAppearanceModifier(backgroundColor: backgroundColor, foregroundColor: foregroundColor, tintColor: tintColor, hideSeparator: hideSeparator))
  }
}

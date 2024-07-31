//
//  ActivityIndicator.swift
//  TheMovieDB
//
//  Created by alfian on 08/07/24.
//

import SwiftUI
import UIKit

@available(iOS, deprecated: 14, message: "Use ProgressView instead")
public struct ActivityIndicator: UIViewRepresentable {
  @Binding var isAnimating: Bool

  public init(isAnimating: Binding<Bool>) {
    self._isAnimating = isAnimating
  }
  
  public func makeUIView(context: Context) -> UIActivityIndicatorView {
    let indicator = UIActivityIndicatorView(style: .medium)
    indicator.hidesWhenStopped = true
    return indicator
  }

  public func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
    if isAnimating {
      uiView.startAnimating()
    } else {
      uiView.stopAnimating()
    }
  }
}

@available(iOS, deprecated: 14, message: "ProgressView available in iOS 14")
public struct ProgressView: UIViewRepresentable {
  public init() {}
  
  public func makeUIView(context: Context) -> UIActivityIndicatorView {
    let indicator = UIActivityIndicatorView(style: .medium)
    indicator.hidesWhenStopped = true
    indicator.startAnimating()
    return indicator
  }

  public func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {

  }
}

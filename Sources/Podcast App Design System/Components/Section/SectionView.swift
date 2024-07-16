//
//  SwiftUIView.swift
//  
//
//  Created by alfian on 14/07/24.
//

import SwiftUI

public struct SectionView<T: Identifiable, C: View>: View {
  let axis: Axis.Set
  let title: String
  let models: [T]
  let content: (T) -> C
  
  public init(axis: Axis.Set = .vertical, title: String, models: [T], @ViewBuilder content: @escaping (T) -> C) {
    self.axis = axis
    self.title = title
    self.models = models
    self.content = content
  }
  
  public var body: some View {
    VStack(alignment: .leading, spacing: Spacing.small) {
      HStack {
        Text(title)
          .font(.Heading.s)
        
        Spacer()
        
        Button {
          
        } label: {
          Text("See all")
        }
        .buttonStyle(.secondary)
      }
      .padding(.horizontal, Spacing.medium)
      
      GridStack(axis: axis,
                dividedBy: 1,
                models: models,
                verticalSpacing: Spacing.small,
                horizontalSpacing: Spacing.small,
                verticalPadding: Spacing.medium,
                horizontalPadding: Spacing.medium) { model in
        content(model)
      }
    }
  }
}

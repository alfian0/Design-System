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
      
      ScrollView(self.axis, showsIndicators: false) {
        if self.axis == .horizontal {
          HStack {
            ForEach(self.models) { model in
              self.content(model)
                .padding(.leading, model.id == self.models.first!.id ? 16 : 0)
                .padding(.trailing, model.id == self.models.last!.id ? 16 : 0)
            }
          }
        } else {
          VStack {
            ForEach(self.models) { model in
              self.content(model)
                .padding(.leading, Spacing.medium)
                .padding(.trailing, Spacing.medium)
            }
          }
        }
      }
    }
  }
}

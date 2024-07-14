//
//  SwiftUIView.swift
//  
//
//  Created by alfian on 14/07/24.
//

import SwiftUI

public struct CardView2: View {
  let model: Model
  
  public struct Model: Identifiable {
    public let id: String = UUID().uuidString
    public let title: String
    public let description: String
    public let image: Image
    public let backgroundColor: Color
    
    public init(title: String, description: String, image: Image, backgroundColor: Color) {
      self.title = title
      self.description =  description
      self.image = image
      self.backgroundColor = backgroundColor
    }
    
    public struct Image: Identifiable {
      public let id: String = UUID().uuidString
      public let image: UIImage
      public let url: String?
      
      public init(image: UIImage, url: String?) {
        self.image = image
        self.url = url
      }
    }
  }
  
  public init(model: Model) {
    self.model = model
  }
  
  public var body: some View {
    ZStack {
      self.model.backgroundColor
      
      HStack(alignment: .center, spacing: Spacing.small) {
        Image(uiImage: model.image.image)
          .frame(width: 48, height: 48)
          .cornerRadius(10)
        
        VStack(alignment: .leading, spacing: 6) {
          Text(model.title)
            .multilineTextAlignment(.leading)
            .foregroundColor(.foregroundDisabled)
            .font(.Label.l)
          
          HStack(spacing: 2) {
            Text(model.description)
              .font(.Paragraph.s)
              .foregroundColor(.foregroundDisabled)
          }
          
          HStack {
            Spacer()
            
            HStack(spacing: 4) {
              Text("27")
                .font(.Label.m)
                .foregroundColor(.foregroundDisabled)
              
              Image("ic_like")
                .renderingMode(.template)
                .foregroundColor(.foregroundDisabled)
                .frame(width: 12, height: 12)
            }
            
            HStack(spacing: 4) {
              Text("2")
                .font(.Label.m)
                .foregroundColor(.foregroundDisabled)
              
              Image("ic_like")
                .renderingMode(.template)
                .foregroundColor(.foregroundDisabled)
                .frame(width: 12, height: 12)
            }
          }
        }
      }
      .padding(Spacing.medium)
    }
    .fixedSize(horizontal: false, vertical: true)
    .cornerRadius(14)
  }
}
